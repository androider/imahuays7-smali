.class Lcom/jakewharton/rxbinding/view/c$2;
.super Lrx/a/a;
.source "ViewClickOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/c;->a(Lrx/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/view/c;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/c;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/c$2;->a:Lcom/jakewharton/rxbinding/view/c;

    invoke-direct {p0}, Lrx/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/c$2;->a:Lcom/jakewharton/rxbinding/view/c;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/c;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
