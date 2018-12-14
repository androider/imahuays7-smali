.class public Lcom/flurry/sdk/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/bm$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "bm"


# instance fields
.field a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/flurry/sdk/bm;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/bn;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 44
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0xe

    .line 48
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1048
    iget-object v1, p1, Lcom/flurry/sdk/bn;->a:Ljava/lang/String;

    .line 51
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v1, ""

    .line 54
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v1, "11010000"

    .line 58
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1056
    iget-wide v4, p1, Lcom/flurry/sdk/bn;->b:J

    .line 61
    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1080
    iget-wide v4, p1, Lcom/flurry/sdk/bn;->c:J

    .line 64
    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1088
    iget-wide v4, p1, Lcom/flurry/sdk/bn;->d:J

    .line 67
    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2060
    iget-byte v4, p1, Lcom/flurry/sdk/bn;->r:B

    .line 73
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2072
    iget-boolean v4, p1, Lcom/flurry/sdk/bn;->s:Z

    .line 76
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2104
    iget-object v4, p1, Lcom/flurry/sdk/bn;->f:Ljava/lang/String;

    .line 79
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 80
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3104
    iget-object v4, p1, Lcom/flurry/sdk/bn;->f:Ljava/lang/String;

    .line 81
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3112
    :goto_0
    iget-object v4, p1, Lcom/flurry/sdk/bn;->g:Ljava/lang/String;

    .line 87
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 4112
    iget-object v4, p1, Lcom/flurry/sdk/bn;->g:Ljava/lang/String;

    .line 89
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 4120
    :goto_1
    iget-object v4, p1, Lcom/flurry/sdk/bn;->h:Ljava/util/Map;

    if-nez v4, :cond_2

    .line 97
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3

    .line 99
    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 100
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    .line 5096
    :cond_3
    :goto_3
    iget-object v4, p1, Lcom/flurry/sdk/bn;->e:Ljava/util/Map;

    if-nez v4, :cond_4

    .line 109
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_5

    .line 111
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 112
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 114
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_4

    .line 5128
    :cond_5
    :goto_5
    iget-object v4, p1, Lcom/flurry/sdk/bn;->i:Ljava/lang/String;

    .line 120
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 5136
    iget-object v4, p1, Lcom/flurry/sdk/bn;->j:Ljava/lang/String;

    .line 123
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 5144
    iget v4, p1, Lcom/flurry/sdk/bn;->k:I

    .line 126
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5152
    iget v4, p1, Lcom/flurry/sdk/bn;->l:I

    .line 129
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5160
    iget-object v4, p1, Lcom/flurry/sdk/bn;->m:Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 5168
    iget-object v4, p1, Lcom/flurry/sdk/bn;->n:Landroid/location/Location;

    const/4 v6, -0x1

    if-nez v4, :cond_6

    goto/16 :goto_9

    .line 138
    :cond_6
    invoke-static {}, Lcom/flurry/sdk/bx;->c()I

    move-result v4

    .line 139
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 6168
    iget-object v7, p1, Lcom/flurry/sdk/bn;->n:Landroid/location/Location;

    .line 142
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9, v4}, Lcom/flurry/sdk/en;->a(DI)D

    move-result-wide v8

    .line 141
    invoke-virtual {v3, v8, v9}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 144
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9, v4}, Lcom/flurry/sdk/en;->a(DI)D

    move-result-wide v8

    .line 143
    invoke-virtual {v3, v8, v9}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 145
    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 146
    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 147
    invoke-virtual {v7}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 149
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_7

    .line 150
    invoke-virtual {v7}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    .line 152
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 155
    :goto_6
    invoke-virtual {v7}, Landroid/location/Location;->getBearing()F

    move-result v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 156
    invoke-virtual {v7}, Landroid/location/Location;->getSpeed()F

    move-result v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 158
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v9, :cond_9

    .line 160
    invoke-virtual {v7}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    .line 161
    :goto_7
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz v8, :cond_a

    .line 163
    invoke-virtual {v7}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 164
    invoke-virtual {v7}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_8

    .line 167
    :cond_9
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :cond_a
    :goto_8
    if-eq v4, v6, :cond_b

    const/4 v4, 0x1

    goto :goto_a

    :cond_b
    :goto_9
    const/4 v4, 0x0

    .line 170
    :goto_a
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 6176
    iget v4, p1, Lcom/flurry/sdk/bn;->o:I

    .line 174
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 6184
    iget v4, p1, Lcom/flurry/sdk/bn;->x:I

    .line 177
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 179
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 180
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6192
    iget-byte v4, p1, Lcom/flurry/sdk/bn;->p:B

    .line 183
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6200
    iget-object v4, p1, Lcom/flurry/sdk/bn;->q:Ljava/lang/Long;

    if-nez v4, :cond_c

    .line 187
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_b

    .line 189
    :cond_c
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 7200
    iget-object v4, p1, Lcom/flurry/sdk/bn;->q:Ljava/lang/Long;

    .line 190
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 7208
    :goto_b
    iget-object v4, p1, Lcom/flurry/sdk/bn;->t:Ljava/util/Map;

    if-nez v4, :cond_d

    .line 196
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_d

    .line 198
    :cond_d
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 199
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 201
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/sdk/bi;

    iget v6, v6, Lcom/flurry/sdk/bi;->a:I

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_c

    .line 7216
    :cond_e
    :goto_d
    iget-object v4, p1, Lcom/flurry/sdk/bn;->u:Ljava/util/List;

    if-nez v4, :cond_f

    .line 208
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_f

    .line 210
    :cond_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 211
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/sdk/bj;

    .line 212
    invoke-virtual {v6}, Lcom/flurry/sdk/bj;->b()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_e

    .line 7224
    :cond_10
    :goto_f
    iget-boolean v4, p1, Lcom/flurry/sdk/bn;->w:Z

    .line 215
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 7240
    iget-object v4, p1, Lcom/flurry/sdk/bn;->z:Ljava/util/List;

    if-eqz v4, :cond_13

    .line 222
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/sdk/bh;

    .line 223
    invoke-virtual {v9}, Lcom/flurry/sdk/bh;->b()Z

    move-result v10

    if-eqz v10, :cond_11

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 8062
    :cond_11
    invoke-virtual {v9}, Lcom/flurry/sdk/bh;->a()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v8, v9

    const v9, 0x27100

    if-le v8, v9, :cond_12

    const/4 v6, 0x5

    .line 231
    sget-object v8, Lcom/flurry/sdk/bm;->b:Ljava/lang/String;

    const-string v9, "Error Log size exceeded. No more event details logged."

    invoke-static {v6, v8, v9}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_13
    const/4 v7, 0x0

    .line 8232
    :cond_14
    :goto_11
    iget v6, p1, Lcom/flurry/sdk/bn;->y:I

    .line 240
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 243
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v7, :cond_15

    .line 245
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/sdk/bh;

    invoke-virtual {v8}, Lcom/flurry/sdk/bh;->a()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 249
    :cond_15
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 250
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 253
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 256
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 8248
    iget-object v4, p1, Lcom/flurry/sdk/bn;->v:Ljava/util/List;

    .line 260
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 261
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 262
    new-array v8, v5, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v9, "UTF8"

    .line 264
    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_14

    .line 266
    :catch_0
    :try_start_3
    sget-object v6, Lcom/flurry/sdk/bm;->b:Ljava/lang/String;

    const-string v9, "Error encoding purchase receipt."

    invoke-static {v0, v6, v9}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 269
    :goto_14
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 270
    array-length v7, v6

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 271
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_13

    .line 8256
    :cond_16
    iget-object p1, p1, Lcom/flurry/sdk/bn;->A:Ljava/lang/String;

    .line 276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 277
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_16

    :cond_17
    const-string v4, ","

    .line 279
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 280
    array-length v4, p1

    rem-int/2addr v4, v7

    if-ne v4, v1, :cond_18

    .line 281
    aget-object v4, p1, v5

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 282
    array-length v4, p1

    sub-int/2addr v4, v1

    const/4 v5, 0x1

    :goto_15
    if-ge v5, v4, :cond_19

    .line 284
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 285
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v5, v5, 0x1

    .line 286
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 289
    :cond_18
    sget-object p1, Lcom/flurry/sdk/bm;->b:Ljava/lang/String;

    const-string v1, "Error variant IDs."

    invoke-static {v0, p1, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 294
    :cond_19
    :goto_16
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/bm;->a:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    invoke-static {v3}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_18

    :catch_1
    move-exception p1

    move-object v1, v3

    goto :goto_17

    :catchall_1
    move-exception p1

    move-object v3, v1

    goto :goto_18

    :catch_2
    move-exception p1

    .line 296
    :goto_17
    :try_start_4
    sget-object v2, Lcom/flurry/sdk/bm;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 299
    :goto_18
    invoke-static {v3}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/flurry/sdk/bm;->a:[B

    return-void
.end method
