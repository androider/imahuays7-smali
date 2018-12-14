.class public final Lcom/flurry/sdk/aw$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/dx<",
        "Lcom/flurry/sdk/aw;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/dw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dw<",
            "Lcom/flurry/sdk/ax;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/flurry/sdk/dw;

    new-instance v1, Lcom/flurry/sdk/ax$a;

    invoke-direct {v1}, Lcom/flurry/sdk/ax$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/dw;-><init>(Lcom/flurry/sdk/dx;)V

    iput-object v0, p0, Lcom/flurry/sdk/aw$a;->a:Lcom/flurry/sdk/dw;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 1245
    :cond_0
    new-instance v3, Lcom/flurry/sdk/aw$a$2;

    invoke-direct {v3, v0, v1}, Lcom/flurry/sdk/aw$a$2;-><init>(Lcom/flurry/sdk/aw$a;Ljava/io/InputStream;)V

    .line 1252
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 1253
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v7, v2

    goto :goto_0

    :cond_1
    move-object v7, v4

    .line 1257
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    .line 1258
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    .line 1259
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 1260
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 1261
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 1262
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 1264
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Lcom/flurry/sdk/bd;->a(I)Lcom/flurry/sdk/bd;

    move-result-object v15

    .line 1267
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1270
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/16 v16, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    move/from16 v20, v5

    .line 1273
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v20

    move-object/from16 v1, p1

    goto :goto_1

    :cond_2
    move-object/from16 v16, v6

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    .line 1277
    :goto_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 1278
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 1279
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 1280
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 1281
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v19, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v19, v5

    .line 1285
    :goto_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .line 1287
    new-instance v5, Lcom/flurry/sdk/aw;

    move-object v6, v5

    invoke-direct/range {v6 .. v19}, Lcom/flurry/sdk/aw;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/bd;Ljava/util/Map;IILjava/lang/String;)V

    .line 1292
    invoke-static {v5, v1, v2}, Lcom/flurry/sdk/aw;->a(Lcom/flurry/sdk/aw;J)J

    .line 1293
    invoke-static {v5, v3}, Lcom/flurry/sdk/aw;->a(Lcom/flurry/sdk/aw;Z)Z

    .line 2036
    iput v4, v5, Lcom/flurry/sdk/dn;->p:I

    .line 1296
    iget-object v1, v0, Lcom/flurry/sdk/aw$a;->a:Lcom/flurry/sdk/dw;

    move-object/from16 v2, p1

    .line 1297
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/dw;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1298
    iput-object v1, v5, Lcom/flurry/sdk/aw;->f:Ljava/util/ArrayList;

    .line 1299
    invoke-virtual {v5}, Lcom/flurry/sdk/aw;->c()V

    return-object v5
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    check-cast p2, Lcom/flurry/sdk/aw;

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 2182
    :cond_0
    new-instance v0, Lcom/flurry/sdk/aw$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/aw$a$1;-><init>(Lcom/flurry/sdk/aw$a;Ljava/io/OutputStream;)V

    .line 2189
    invoke-static {p2}, Lcom/flurry/sdk/aw;->a(Lcom/flurry/sdk/aw;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2190
    invoke-static {p2}, Lcom/flurry/sdk/aw;->a(Lcom/flurry/sdk/aw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 2192
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 3056
    :goto_0
    iget-object v1, p2, Lcom/flurry/sdk/dn;->r:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4056
    iget-object v1, p2, Lcom/flurry/sdk/dn;->r:Ljava/lang/String;

    .line 2196
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 2198
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 5016
    :goto_1
    iget-wide v1, p2, Lcom/flurry/sdk/dn;->n:J

    .line 2201
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 5032
    iget v1, p2, Lcom/flurry/sdk/dn;->p:I

    .line 2202
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2203
    invoke-static {p2}, Lcom/flurry/sdk/aw;->b(Lcom/flurry/sdk/aw;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2204
    invoke-static {p2}, Lcom/flurry/sdk/aw;->c(Lcom/flurry/sdk/aw;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2205
    invoke-static {p2}, Lcom/flurry/sdk/aw;->d(Lcom/flurry/sdk/aw;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2206
    invoke-static {p2}, Lcom/flurry/sdk/aw;->e(Lcom/flurry/sdk/aw;)Lcom/flurry/sdk/bd;

    move-result-object v1

    .line 6031
    iget v1, v1, Lcom/flurry/sdk/bd;->e:I

    .line 2206
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2208
    invoke-static {p2}, Lcom/flurry/sdk/aw;->f(Lcom/flurry/sdk/aw;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2210
    invoke-static {p2}, Lcom/flurry/sdk/aw;->f(Lcom/flurry/sdk/aw;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2212
    invoke-static {p2}, Lcom/flurry/sdk/aw;->f(Lcom/flurry/sdk/aw;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2214
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2215
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2216
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 2219
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2222
    :cond_4
    invoke-static {p2}, Lcom/flurry/sdk/aw;->g(Lcom/flurry/sdk/aw;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2223
    invoke-static {p2}, Lcom/flurry/sdk/aw;->h(Lcom/flurry/sdk/aw;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2224
    invoke-static {p2}, Lcom/flurry/sdk/aw;->i(Lcom/flurry/sdk/aw;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2226
    invoke-static {p2}, Lcom/flurry/sdk/aw;->j(Lcom/flurry/sdk/aw;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2227
    invoke-static {p2}, Lcom/flurry/sdk/aw;->j(Lcom/flurry/sdk/aw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v1, ""

    .line 2229
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2232
    :goto_3
    invoke-static {p2}, Lcom/flurry/sdk/aw;->k(Lcom/flurry/sdk/aw;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2234
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 2236
    iget-object v0, p0, Lcom/flurry/sdk/aw$a;->a:Lcom/flurry/sdk/dw;

    iget-object p2, p2, Lcom/flurry/sdk/aw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/dw;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void

    :cond_6
    :goto_4
    return-void
.end method
