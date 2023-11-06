from talon import Context, actions

ctx = Context()

ctx.matches = r"""
os: mac
tag: browser
app: firefox
"""


@ctx.action_class("user")
class UserActions:
    def firefox_bookmarks_sidebar():
        actions.key("cmd-b")

    def firefox_history_sidebar():
        actions.key("cmd-shift-h")


@ctx.action_class("browser")
class BrowserActions:
    def bookmarks():
        actions.key("cmd-shift-o")

    def open_private_window():
        actions.key("cmd-shift-p")

    def show_downloads():
        actions.key("cmd-j")

    def show_extensions():
        actions.key("cmd-shift-a")

    def show_history():
        actions.key("cmd-y")

    def toggle_dev_tools():
        actions.key("cmd-alt-i")


@ctx.action_class("user")
class UserActions:
    def tab_jump(number: int):
        if number < 9:
            actions.key(f"cmd-{number}")

    def tab_final():
        actions.key("cmd-9")

    def tab_duplicate():
        """Limitation: this will not work if the text in your address bar has been manually edited.
        Long-term we want a better shortcut from browsers.
        """
        actions.browser.focus_address()
        actions.sleep("180ms")
        actions.key("alt-enter")
