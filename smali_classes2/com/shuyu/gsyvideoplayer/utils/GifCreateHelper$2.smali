.class Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$2;
.super Ljava/lang/Object;
.source "GifCreateHelper.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->startSaveBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(ZLjava/io/File;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$602(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Z)Z

    if-eqz p1, :cond_0

    const-string p1, "TTT"

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SUCCESS CREATE FILE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$100(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
