module main

import vweb


const (
    port = 3000
)


struct App {
    pub mut:
    vweb vweb.Context
    cnt int
    }


fn main() {
    vweb.run<App>(port)
    }

pub fn (mut app App) hello() vweb.Result {
    return app.text('Hello World!')
    }

pub fn (mut app App) returnJson() vweb.Result {
    return app.vweb.json('{"message": "Hello World"}')
    }
