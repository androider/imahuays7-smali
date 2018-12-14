.class Lcom/facebook/fresco/animation/a/c$1;
.super Ljava/lang/Object;
.source "AnimationBackendDelegateWithInactivityCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/fresco/animation/a/c;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/a/c;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/facebook/fresco/animation/a/c$1;->a:Lcom/facebook/fresco/animation/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/c$1;->a:Lcom/facebook/fresco/animation/a/c;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/a/c$1;->a:Lcom/facebook/fresco/animation/a/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/fresco/animation/a/c;->a(Lcom/facebook/fresco/animation/a/c;Z)Z

    .line 84
    iget-object v1, p0, Lcom/facebook/fresco/animation/a/c$1;->a:Lcom/facebook/fresco/animation/a/c;

    invoke-static {v1}, Lcom/facebook/fresco/animation/a/c;->a(Lcom/facebook/fresco/animation/a/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/facebook/fresco/animation/a/c$1;->a:Lcom/facebook/fresco/animation/a/c;

    invoke-static {v1}, Lcom/facebook/fresco/animation/a/c;->b(Lcom/facebook/fresco/animation/a/c;)Lcom/facebook/fresco/animation/a/c$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/facebook/fresco/animation/a/c$1;->a:Lcom/facebook/fresco/animation/a/c;

    invoke-static {v1}, Lcom/facebook/fresco/animation/a/c;->b(Lcom/facebook/fresco/animation/a/c;)Lcom/facebook/fresco/animation/a/c$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/fresco/animation/a/c$a;->f()V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/a/c$1;->a:Lcom/facebook/fresco/animation/a/c;

    invoke-static {v1}, Lcom/facebook/fresco/animation/a/c;->c(Lcom/facebook/fresco/animation/a/c;)V

    .line 91
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
