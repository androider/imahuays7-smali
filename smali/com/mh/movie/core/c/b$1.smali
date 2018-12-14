.class Lcom/mh/movie/core/c/b$1;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/c/b;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

.field final synthetic b:Lcom/mh/movie/core/c/b;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/c/b;Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/mh/movie/core/c/b$1;->b:Lcom/mh/movie/core/c/b;

    iput-object p2, p0, Lcom/mh/movie/core/c/b$1;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/c/b$1;->b:Lcom/mh/movie/core/c/b;

    iget-object v1, p0, Lcom/mh/movie/core/c/b$1;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->c(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/mh/movie/core/c/b$1;->b:Lcom/mh/movie/core/c/b;

    iget-object v1, p0, Lcom/mh/movie/core/c/b$1;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->d(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/mh/movie/core/c/b$1;->b:Lcom/mh/movie/core/c/b;

    iget-object v1, p0, Lcom/mh/movie/core/c/b$1;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->e(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/mh/movie/core/c/b$1;->b:Lcom/mh/movie/core/c/b;

    iget-object v1, p0, Lcom/mh/movie/core/c/b$1;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->f(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/mh/movie/core/c/b$1;->b:Lcom/mh/movie/core/c/b;

    iget-object v1, p0, Lcom/mh/movie/core/c/b$1;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->g(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "text"

    .line 151
    iget-object v1, p0, Lcom/mh/movie/core/c/b$1;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/mh/movie/core/c/b$1;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getmClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/mh/movie/core/c/b$1;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getmClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 155
    iget-object v0, p0, Lcom/mh/movie/core/c/b$1;->b:Lcom/mh/movie/core/c/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b;->d()V

    .line 157
    iget-object v0, p0, Lcom/mh/movie/core/c/b$1;->b:Lcom/mh/movie/core/c/b;

    invoke-static {v0}, Lcom/mh/movie/core/c/b;->a(Lcom/mh/movie/core/c/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5206\u4eab\u94fe\u63a5\u5df2\u590d\u5236"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/c/b$1;->b:Lcom/mh/movie/core/c/b;

    invoke-static {v0}, Lcom/mh/movie/core/c/b;->a(Lcom/mh/movie/core/c/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u590d\u5236\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
