.class Lcom/jakewharton/rxbinding/view/c$1;
.super Ljava/lang/Object;
.source "ViewClickOnSubscribe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/c;->a(Lrx/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/e;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/c;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/c;Lrx/e;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/c$1;->b:Lcom/jakewharton/rxbinding/view/c;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/c$1;->a:Lrx/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 22
    iget-object p1, p0, Lcom/jakewharton/rxbinding/view/c$1;->a:Lrx/e;

    invoke-virtual {p1}, Lrx/e;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/jakewharton/rxbinding/view/c$1;->a:Lrx/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrx/e;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
