.class final Lcom/flurry/sdk/bb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/bb;->a([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/dj$a<",
        "[B",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bb;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/flurry/sdk/bb$2;->a:Lcom/flurry/sdk/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/dj;Ljava/lang/Object;)V
    .locals 3

    .line 1165
    iget p1, p1, Lcom/flurry/sdk/dl;->q:I

    if-lez p1, :cond_1

    const/16 p2, 0xc8

    const/4 v0, 0x3

    if-lt p1, p2, :cond_0

    const/16 p2, 0x12c

    if-ge p1, p2, :cond_0

    .line 1153
    invoke-static {}, Lcom/flurry/sdk/bb;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pulse logging report sent successfully HTTP response:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object p1, p0, Lcom/flurry/sdk/bb$2;->a:Lcom/flurry/sdk/bb;

    invoke-static {p1}, Lcom/flurry/sdk/bb;->a(Lcom/flurry/sdk/bb;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1155
    iget-object p1, p0, Lcom/flurry/sdk/bb$2;->a:Lcom/flurry/sdk/bb;

    invoke-static {p1}, Lcom/flurry/sdk/bb;->b(Lcom/flurry/sdk/bb;)Lcom/flurry/sdk/cu;

    move-result-object p1

    iget-object p2, p0, Lcom/flurry/sdk/bb$2;->a:Lcom/flurry/sdk/bb;

    invoke-static {p2}, Lcom/flurry/sdk/bb;->a(Lcom/flurry/sdk/bb;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/flurry/sdk/cu;->a(Ljava/lang/Object;)V

    return-void

    .line 1157
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/bb;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pulse logging report sent unsuccessfully, HTTP response:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1161
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/bb;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Server Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
