.class final Lcom/flurry/sdk/dj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dj;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dj;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/flurry/sdk/dj$1;->a:Lcom/flurry/sdk/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/flurry/sdk/dj$1;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0}, Lcom/flurry/sdk/dj;->d(Lcom/flurry/sdk/dj;)V

    return-void
.end method

.method public final a(Lcom/flurry/sdk/dl;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lcom/flurry/sdk/dl;->d()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/flurry/sdk/dj$1;->a:Lcom/flurry/sdk/dj;

    invoke-static {p1}, Lcom/flurry/sdk/dj;->c(Lcom/flurry/sdk/dj;)Lcom/flurry/sdk/dx;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/flurry/sdk/dj$1;->a:Lcom/flurry/sdk/dj;

    iget-object v0, p0, Lcom/flurry/sdk/dj$1;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0}, Lcom/flurry/sdk/dj;->c(Lcom/flurry/sdk/dj;)Lcom/flurry/sdk/dx;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/flurry/sdk/dx;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flurry/sdk/dj;->a(Lcom/flurry/sdk/dj;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/flurry/sdk/dj$1;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0}, Lcom/flurry/sdk/dj;->a(Lcom/flurry/sdk/dj;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/dj$1;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0}, Lcom/flurry/sdk/dj;->b(Lcom/flurry/sdk/dj;)Lcom/flurry/sdk/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/flurry/sdk/dj$1;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0}, Lcom/flurry/sdk/dj;->b(Lcom/flurry/sdk/dj;)Lcom/flurry/sdk/dx;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dj$1;->a:Lcom/flurry/sdk/dj;

    invoke-static {v1}, Lcom/flurry/sdk/dj;->a(Lcom/flurry/sdk/dj;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/flurry/sdk/dx;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
