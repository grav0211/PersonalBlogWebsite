import Foundation
import Publish
import Plot
import CasperishTheme // 1

// This type acts as the configuration for your website.
struct PersonalBlogWebsite: Website, CasperishWebsite { // 2
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata, CasperishWebsiteItemMetadata { // 3
        // Add any site-specific metadata that you want to use here.
        var cover: String? // 3 bis
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Personal Blog"
    var description = "A description of PersonalBlogWebsite"
    var language: Language { .english }
    var imagePath: Path? { nil }

    // 4
    // Update these properties to configure your casperish-website:
    var rootPathString = "/"
    var headerColor = "#424242"
    var cover = ""
    var author = "Arnaud Joubay"
    var avatar = "http://i.pravatar.cc/300"
    var bio = "Swift & Rails Indie Maker"
    var icon = "🏝"
    var newsletterAction = ""
    var contacts: [(ContactPoint, String)] { [
        (.twitter, "sowenjub"),
        (.dev, "sowenjub"),
        (.linkedIn, "arnaudjoubay"),
        (.gitHub, "sowenjub"),
        (.stackoverflow, "229688"),
    ]}
}

// This will generate your website using the built-in Foundation theme:
try PersonalBlogWebsite().publish(
     withTheme: .casperish,
     additionalSteps: [
         .installPlugin(.readingTime()),
         .installPlugin(.pygments()),
     ],
     plugins: [.pygments()]
 ) // 5
