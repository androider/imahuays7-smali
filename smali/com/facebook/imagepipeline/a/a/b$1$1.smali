.class Lcom/facebook/imagepipeline/a/a/b$1$1;
.super Ljava/lang/Object;
.source "OkHttpNetworkFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/a/a/b$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/a/a/b$1;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/a/a/b$1;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/facebook/imagepipeline/a/a/b$1$1;->a:Lcom/facebook/imagepipeline/a/a/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/facebook/imagepipeline/a/a/b$1$1;->a:Lcom/facebook/imagepipeline/a/a/b$1;

    iget-object v0, v0, Lcom/facebook/imagepipeline/a/a/b$1;->a:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    return-void
.end method
