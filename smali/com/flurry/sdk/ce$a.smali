.class final Lcom/flurry/sdk/ce$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/dx<",
        "Lcom/flurry/sdk/ce;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1089
    :cond_0
    new-instance v1, Lcom/flurry/sdk/ce$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ce$a$2;-><init>(Lcom/flurry/sdk/ce$a;Ljava/io/InputStream;)V

    .line 1096
    new-instance p1, Lcom/flurry/sdk/ce;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/flurry/sdk/ce;-><init>(B)V

    .line 1098
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .line 2011
    iput-boolean v3, p1, Lcom/flurry/sdk/ce;->a:Z

    .line 1100
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-lez v3, :cond_1

    .line 1102
    new-array v4, v3, [B

    .line 3011
    iput-object v4, p1, Lcom/flurry/sdk/ce;->b:[B

    .line 4011
    iget-object v4, p1, Lcom/flurry/sdk/ce;->b:[B

    .line 1103
    invoke-virtual {v1, v4, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    goto :goto_0

    .line 5011
    :cond_1
    iput-object v0, p1, Lcom/flurry/sdk/ce;->b:[B

    .line 1108
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-lez v3, :cond_2

    .line 1110
    new-array v0, v3, [B

    .line 6011
    iput-object v0, p1, Lcom/flurry/sdk/ce;->c:[B

    .line 7011
    iget-object v0, p1, Lcom/flurry/sdk/ce;->c:[B

    .line 1111
    invoke-virtual {v1, v0, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    goto :goto_1

    .line 8011
    :cond_2
    iput-object v0, p1, Lcom/flurry/sdk/ce;->c:[B

    .line 1116
    :goto_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 9011
    iput v0, p1, Lcom/flurry/sdk/ce;->d:I

    return-object p1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    check-cast p2, Lcom/flurry/sdk/ce;

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 9055
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ce$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ce$a$1;-><init>(Lcom/flurry/sdk/ce$a;Ljava/io/OutputStream;)V

    .line 10011
    iget-boolean p1, p2, Lcom/flurry/sdk/ce;->a:Z

    .line 9062
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 11011
    iget-object p1, p2, Lcom/flurry/sdk/ce;->b:[B

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 9065
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 12011
    :cond_1
    iget-object p1, p2, Lcom/flurry/sdk/ce;->b:[B

    .line 9067
    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 13011
    iget-object p1, p2, Lcom/flurry/sdk/ce;->b:[B

    .line 9068
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 14011
    :goto_0
    iget-object p1, p2, Lcom/flurry/sdk/ce;->c:[B

    if-nez p1, :cond_2

    .line 9072
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    .line 15011
    :cond_2
    iget-object p1, p2, Lcom/flurry/sdk/ce;->c:[B

    .line 9074
    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 16011
    iget-object p1, p2, Lcom/flurry/sdk/ce;->c:[B

    .line 9075
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 17011
    :goto_1
    iget p1, p2, Lcom/flurry/sdk/ce;->d:I

    .line 9078
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 9080
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void

    :cond_3
    :goto_2
    return-void
.end method
