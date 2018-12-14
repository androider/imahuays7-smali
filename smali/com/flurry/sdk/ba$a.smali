.class public final Lcom/flurry/sdk/ba$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/dx<",
        "Lcom/flurry/sdk/ba;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/dw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dw<",
            "Lcom/flurry/sdk/aw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lcom/flurry/sdk/dw;

    new-instance v1, Lcom/flurry/sdk/aw$a;

    invoke-direct {v1}, Lcom/flurry/sdk/aw$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/dw;-><init>(Lcom/flurry/sdk/dx;)V

    iput-object v0, p0, Lcom/flurry/sdk/ba$a;->a:Lcom/flurry/sdk/dw;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1239
    :cond_0
    new-instance v2, Lcom/flurry/sdk/ba$a$2;

    invoke-direct {v2, v0, v1}, Lcom/flurry/sdk/ba$a$2;-><init>(Lcom/flurry/sdk/ba$a;Ljava/io/InputStream;)V

    .line 1246
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 1247
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    .line 1248
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 1249
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/flurry/sdk/be;->a(I)Lcom/flurry/sdk/be;

    move-result-object v10

    .line 1250
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    .line 1251
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 1252
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 1253
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 1254
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1256
    new-instance v11, Lcom/flurry/sdk/ba;

    const/16 v16, 0x0

    move-object v3, v11

    move-object v1, v11

    move-object/from16 v11, v16

    invoke-direct/range {v3 .. v11}, Lcom/flurry/sdk/ba;-><init>(Ljava/lang/String;ZJJLcom/flurry/sdk/be;Ljava/util/Map;)V

    .line 1258
    invoke-static {v1, v12, v13}, Lcom/flurry/sdk/ba;->a(Lcom/flurry/sdk/ba;J)J

    .line 1259
    invoke-static {v1, v14}, Lcom/flurry/sdk/ba;->a(Lcom/flurry/sdk/ba;I)I

    .line 1260
    invoke-static {v1, v15}, Lcom/flurry/sdk/ba;->b(Lcom/flurry/sdk/ba;I)I

    .line 1261
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {v1, v3}, Lcom/flurry/sdk/ba;->a(Lcom/flurry/sdk/ba;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1263
    iget-object v2, v0, Lcom/flurry/sdk/ba$a;->a:Lcom/flurry/sdk/dw;

    move-object v3, v1

    move-object/from16 v1, p1

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/dw;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1266
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v2}, Lcom/flurry/sdk/ba;->a(Lcom/flurry/sdk/ba;Ljava/util/Map;)Ljava/util/Map;

    .line 1268
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/aw;

    .line 1269
    iput-object v3, v2, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/ba;

    .line 1270
    invoke-static {v3}, Lcom/flurry/sdk/ba;->j(Lcom/flurry/sdk/ba;)Ljava/util/Map;

    move-result-object v4

    .line 2098
    iget-wide v5, v2, Lcom/flurry/sdk/aw;->a:J

    .line 1270
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    check-cast p2, Lcom/flurry/sdk/ba;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2204
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ba$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ba$a$1;-><init>(Lcom/flurry/sdk/ba$a;Ljava/io/OutputStream;)V

    .line 2211
    invoke-static {p2}, Lcom/flurry/sdk/ba;->a(Lcom/flurry/sdk/ba;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2212
    invoke-static {p2}, Lcom/flurry/sdk/ba;->b(Lcom/flurry/sdk/ba;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2213
    invoke-static {p2}, Lcom/flurry/sdk/ba;->c(Lcom/flurry/sdk/ba;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2214
    invoke-static {p2}, Lcom/flurry/sdk/ba;->d(Lcom/flurry/sdk/ba;)Lcom/flurry/sdk/be;

    move-result-object v1

    .line 3032
    iget v1, v1, Lcom/flurry/sdk/be;->e:I

    .line 2214
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2215
    invoke-static {p2}, Lcom/flurry/sdk/ba;->e(Lcom/flurry/sdk/ba;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2216
    invoke-static {p2}, Lcom/flurry/sdk/ba;->f(Lcom/flurry/sdk/ba;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2218
    invoke-static {p2}, Lcom/flurry/sdk/ba;->g(Lcom/flurry/sdk/ba;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2219
    invoke-static {p2}, Lcom/flurry/sdk/ba;->g(Lcom/flurry/sdk/ba;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 2221
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2224
    :goto_0
    invoke-static {p2}, Lcom/flurry/sdk/ba;->h(Lcom/flurry/sdk/ba;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2225
    invoke-static {p2}, Lcom/flurry/sdk/ba;->i(Lcom/flurry/sdk/ba;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2227
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 2229
    iget-object v0, p0, Lcom/flurry/sdk/ba$a;->a:Lcom/flurry/sdk/dw;

    invoke-virtual {p2}, Lcom/flurry/sdk/ba;->a()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/dw;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
