import Sys

pragma "c++"

@ccode {
#include "ficus/ficus.h"
#include "crow.h"
}

fun hello(s: string): string {
    val h = f"Hello, {s}"
    return h
}

fun run_webapp(s: string): void {

fun run_webapp_in(s: string, fn: (string) -> string): void
@ccode {
    crow::SimpleApp app;

    CROW_ROUTE(app, "/")
    ([s, fn]() {
        fx_str_t res;

        fn->fp(s, &res, 0);

        fx_cstr_t tt;
        int fx_status = fx_str2cstr(&res, &tt, 0, 0);
        char* rtt = tt.data;

        fx_free_str(&res);

        auto ret = std::string(rtt);

        fx_free_cstr(&tt);

        return ret;
    });

    app.port(18080).run();
    return FX_OK;
}

    run_webapp_in(s, hello)
}

val name = match Sys.argv {
    | _ :: h :: _ => h
    | _ => "xxx"
}

run_webapp(name)