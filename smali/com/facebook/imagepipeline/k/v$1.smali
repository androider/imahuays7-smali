.class Lcom/facebook/imagepipeline/k/v$1;
.super Ljava/lang/Object;
.source "JobScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/v;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/k/v$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/v;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/v;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/v$1;->a:Lcom/facebook/imagepipeline/k/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/v$1;->a:Lcom/facebook/imagepipeline/k/v;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/v;->a(Lcom/facebook/imagepipeline/k/v;)V

    return-void
.end method
