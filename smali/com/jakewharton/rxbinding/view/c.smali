.class final Lcom/jakewharton/rxbinding/view/c;
.super Ljava/lang/Object;
.source "ViewClickOnSubscribe.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/a$a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/c;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/c;->a(Lrx/e;)V

    return-void
.end method

.method public a(Lrx/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e<",
            "-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/jakewharton/rxbinding/a/a;->a()V

    .line 20
    new-instance v0, Lcom/jakewharton/rxbinding/view/c$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/c$1;-><init>(Lcom/jakewharton/rxbinding/view/c;Lrx/e;)V

    .line 27
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/c;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    new-instance v0, Lcom/jakewharton/rxbinding/view/c$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/c$2;-><init>(Lcom/jakewharton/rxbinding/view/c;)V

    invoke-virtual {p1, v0}, Lrx/e;->a(Lrx/f;)V

    return-void
.end method
