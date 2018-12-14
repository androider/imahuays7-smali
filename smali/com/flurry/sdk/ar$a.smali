.class public final Lcom/flurry/sdk/ar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/dx<",
        "Lcom/flurry/sdk/ar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1077
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ar$a$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ar$a$2;-><init>(Lcom/flurry/sdk/ar$a;Ljava/io/InputStream;)V

    .line 1084
    new-instance p1, Lcom/flurry/sdk/ar;

    invoke-direct {p1}, Lcom/flurry/sdk/ar;-><init>()V

    .line 1086
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 2012
    iput-wide v1, p1, Lcom/flurry/sdk/ar;->a:J

    .line 1087
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    .line 3012
    iput-boolean v1, p1, Lcom/flurry/sdk/ar;->b:Z

    .line 1089
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1090
    new-array v1, v1, [B

    .line 4012
    iput-object v1, p1, Lcom/flurry/sdk/ar;->c:[B

    .line 5012
    iget-object v1, p1, Lcom/flurry/sdk/ar;->c:[B

    .line 1091
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    check-cast p2, Lcom/flurry/sdk/ar;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 5056
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ar$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ar$a$1;-><init>(Lcom/flurry/sdk/ar$a;Ljava/io/OutputStream;)V

    .line 6012
    iget-wide v1, p2, Lcom/flurry/sdk/ar;->a:J

    .line 5063
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 7012
    iget-boolean p1, p2, Lcom/flurry/sdk/ar;->b:Z

    .line 5064
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 8012
    iget-object p1, p2, Lcom/flurry/sdk/ar;->c:[B

    .line 5065
    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 9012
    iget-object p1, p2, Lcom/flurry/sdk/ar;->c:[B

    .line 5066
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 5068
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
