.class Lcom/fm/openinstall/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fm/openinstall/a/b;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/a/c;->a:Lcom/fm/openinstall/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/fm/openinstall/a/c;->a:Lcom/fm/openinstall/a/b;

    invoke-static {v0}, Lcom/fm/openinstall/a/b;->a(Lcom/fm/openinstall/a/b;)Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/fm/openinstall/a/c;->a:Lcom/fm/openinstall/a/b;

    invoke-virtual {v4, v1, v0}, Lcom/fm/openinstall/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fm/openinstall/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fm/openinstall/b/a;->c()I

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/fm/openinstall/a/c;->a:Lcom/fm/openinstall/a/b;

    invoke-static {v0}, Lcom/fm/openinstall/a/b;->a(Lcom/fm/openinstall/a/b;)Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-static {v3, v3, v3}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/fm/openinstall/a/c;->a:Lcom/fm/openinstall/a/b;

    invoke-static {v0}, Lcom/fm/openinstall/a/b;->a(Lcom/fm/openinstall/a/b;)Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-static {v3, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    goto :goto_2

    :cond_3
    return-void
.end method
