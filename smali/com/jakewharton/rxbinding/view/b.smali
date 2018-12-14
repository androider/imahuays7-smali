.class public final Lcom/jakewharton/rxbinding/view/b;
.super Ljava/lang/Object;
.source "RxView.java"


# direct methods
.method public static a(Landroid/view/View;)Lrx/a;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 77
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/jakewharton/rxbinding/view/c;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/c;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object p0

    return-object p0
.end method
