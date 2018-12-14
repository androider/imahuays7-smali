.class Lcom/mh/movie/core/mvp/ui/widget/b/d$c;
.super Ljava/lang/Object;
.source "WebpFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/b/d;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/b/d;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/d$c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 295
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/b/d$a;

    .line 297
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/d$c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/b/d;->a(Lcom/mh/movie/core/mvp/ui/widget/b/d$a;)V

    return v1

    .line 300
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 301
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/b/d$a;

    .line 302
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/d$c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/b/d;->a:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
