{%- extends 'full.tpl' -%}

{%- block body -%}
{{ super() }}
<script>
    function sendHeight() {
        var body = document.body,
            html = document.documentElement;

        var height = Math.max(body.scrollHeight, body.offsetHeight,
                              html.clientHeight, html.scrollHeight, html.offsetHeight);

        // Send the height to the parent window
        window.parent.postMessage({ iframeHeight: height }, "*");
    }

    // Call the function on page load and when the window is resized
    window.addEventListener("load", sendHeight);
    window.addEventListener("resize", sendHeight);
</script>
{%- endblock body -%}
