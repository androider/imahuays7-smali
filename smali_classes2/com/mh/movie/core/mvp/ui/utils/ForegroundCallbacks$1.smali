.class Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$1;
.super Ljava/lang/Object;
.source "ForegroundCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->access$000(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->access$100(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->access$002(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;Z)Z

    const-string v0, "went background"

    .line 102
    invoke-static {v0}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->access$200(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$Listener;

    .line 105
    :try_start_0
    invoke-interface {v1}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$Listener;->onBecameBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener threw exception!:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "still foreground"

    .line 111
    invoke-static {v0}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
