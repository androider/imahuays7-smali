.class public final Lcom/flurry/sdk/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/dx<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/dx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dx<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/dx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/dx<",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/flurry/sdk/dw;->a:Lcom/flurry/sdk/dx;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dw;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/dw;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/flurry/sdk/dw$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/dw$1;-><init>(Lcom/flurry/sdk/dw;Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 42
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_1
    if-ge v1, v2, :cond_2

    .line 45
    iget-object v3, p0, Lcom/flurry/sdk/dw;->a:Lcom/flurry/sdk/dx;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/flurry/sdk/dx;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public final b(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    new-instance v0, Lcom/flurry/sdk/dw$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/dw$2;-><init>(Lcom/flurry/sdk/dw;Ljava/io/InputStream;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 69
    iget-object v3, p0, Lcom/flurry/sdk/dw;->a:Lcom/flurry/sdk/dx;

    invoke-interface {v3, p1}, Lcom/flurry/sdk/dx;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 71
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing record."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
