use web_view::*;

fn main() {
    let html_content = "<html><body><h1>Hello World!</h1></body></html>";
    
    // long and ugly format, but builds well
    web_view::builder
        .title("Rose")
        .content(Content::Html(html_content))
        .size(320, 480)
        .rezisable(true)
        .debug(true)
        .user_data(())
        .invoke_handler(|_webview, _arg| Ok(()))
        .run()
        .unwrap();
}
