.class public Lcom/flurry/sdk/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "bk"


# instance fields
.field public a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JLcom/flurry/sdk/eh;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZJJ",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/bm;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/flurry/sdk/cb;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;J",
            "Lcom/flurry/sdk/eh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p16

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    .line 34
    iput-object v6, v1, Lcom/flurry/sdk/bk;->a:[B

    .line 57
    :try_start_0
    new-instance v7, Lcom/flurry/sdk/cs;

    invoke-direct {v7}, Lcom/flurry/sdk/cs;-><init>()V

    .line 58
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    new-instance v9, Ljava/security/DigestOutputStream;

    invoke-direct {v9, v8, v7}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    .line 60
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v11, 0x22

    .line 62
    :try_start_1
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v11, 0x0

    .line 65
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-wide/16 v12, 0x0

    .line 68
    invoke-virtual {v10, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 69
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v12, 0x3

    .line 71
    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 72
    invoke-static {}, Lcom/flurry/sdk/cm;->b()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-wide/from16 v13, p14

    .line 73
    invoke-virtual {v10, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-object/from16 v13, p1

    .line 74
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object/from16 v13, p2

    .line 75
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v13, "VersionName"

    .line 78
    invoke-virtual {v5, v13}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 79
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v13, ""

    .line 80
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 86
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v13

    .line 1103
    iget-object v13, v13, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 87
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 88
    iget v13, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 89
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 96
    invoke-static {}, Lcom/flurry/sdk/db;->a()Lcom/flurry/sdk/db;

    move-result-object v13

    .line 2054
    iget-boolean v13, v13, Lcom/flurry/sdk/db;->b:Z

    const/4 v14, 0x1

    if-eqz v13, :cond_1

    .line 97
    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 98
    sget-object v13, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    const-string v15, "Agent report type: instant app"

    invoke-static {v13, v15}, Lcom/flurry/sdk/dc;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 101
    sget-object v13, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    const-string v15, "Agent report type: main device"

    invoke-static {v13, v15}, Lcom/flurry/sdk/dc;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_1
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->size()I

    move-result v13

    .line 106
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 107
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/flurry/sdk/cb;

    iget v6, v6, Lcom/flurry/sdk/cb;->d:I

    invoke-virtual {v10, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 109
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 110
    array-length v15, v6

    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 111
    invoke-virtual {v10, v6}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v6, 0x0

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    move/from16 v6, p3

    .line 117
    invoke-virtual {v10, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    move/from16 v6, p4

    .line 120
    invoke-virtual {v10, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    move-wide/from16 v14, p5

    .line 123
    invoke-virtual {v10, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-wide/from16 v13, p7

    .line 126
    invoke-virtual {v10, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    if-eqz p17, :cond_3

    const/4 v6, 0x2

    .line 138
    invoke-virtual {v10, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_3

    .line 140
    :cond_3
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_3
    const-string v6, "IncludeBackgroundSessionsInMetrics"

    .line 144
    invoke-virtual {v5, v6}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v10, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    const-string v6, "os.arch"

    .line 148
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v6, ""

    :cond_4
    const/16 v13, 0x8

    .line 154
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v13, "device.model"

    .line 155
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 156
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v13, "build.brand"

    .line 158
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 159
    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v13, "build.id"

    .line 161
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 162
    sget-object v13, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v13, "version.release"

    .line 164
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 165
    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v13, "build.device"

    .line 167
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 168
    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v13, "build.product"

    .line 170
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 171
    sget-object v13, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v13, "proguard.build.uuid"

    .line 173
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/flurry/sdk/bs;->a()Lcom/flurry/sdk/bs;

    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v13

    .line 2103
    iget-object v13, v13, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    if-eqz v13, :cond_5

    .line 3033
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "com.flurry.crash.map_id"

    const-string v12, "string"

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v15, v12, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_5

    .line 3034
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_5
    const-string v11, ""

    .line 174
    :goto_4
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 175
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v12, "device.arch"

    .line 176
    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v10, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-eqz p11, :cond_6

    .line 180
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v11

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    .line 181
    :goto_5
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p11, :cond_8

    .line 184
    sget-object v6, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    const-string v11, "sending referrer values because it exists"

    const/4 v12, 0x3

    invoke-static {v12, v6, v11}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 187
    sget-object v11, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Referrer Entry:  "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    .line 187
    invoke-static {v13, v11, v12}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 190
    sget-object v11, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "referrer key is :"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    invoke-static {v13, v11, v12}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 193
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 194
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 195
    sget-object v12, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "referrer value is :"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    invoke-static {v13, v12, v11}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    const-string v2, "notificationToken"

    .line 201
    invoke-virtual {v5, v2}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const/4 v6, 0x1

    .line 205
    invoke-virtual {v10, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 207
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 210
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :goto_7
    const-string v2, "notificationsEnabled"

    .line 214
    invoke-virtual {v5, v2}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 215
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz p12, :cond_a

    .line 218
    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v11

    goto :goto_8

    :cond_a
    const/4 v11, 0x0

    .line 220
    :goto_8
    sget-object v2, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "optionsMapSize is:  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6, v2, v5}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p12, :cond_c

    .line 226
    sget-object v2, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    const-string v5, "sending launch options"

    invoke-static {v6, v2, v5}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 229
    sget-object v5, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Launch Options Key:  "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x3

    invoke-static {v12, v5, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 232
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v10, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 234
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 235
    invoke-virtual {v10, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 236
    sget-object v6, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Launch Options value is :"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    invoke-static {v12, v6, v5}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    if-eqz p13, :cond_d

    .line 243
    invoke-interface/range {p13 .. p13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    .line 245
    :goto_a
    sget-object v3, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "numOriginAttributions is:  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6, v3, v5}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p13, :cond_11

    .line 250
    invoke-interface/range {p13 .. p13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 251
    sget-object v4, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Origin Atttribute Key:  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6, v4, v5}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 254
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 256
    sget-object v4, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Origin Attribute Map Size for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 256
    invoke-static {v6, v4, v5}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 260
    sget-object v6, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Origin Atttribute for "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    .line 260
    invoke-static {v12, v6, v11}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_c

    :cond_f
    const-string v6, ""

    :goto_c
    invoke-virtual {v10, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 263
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_d

    :cond_10
    const-string v5, ""

    :goto_d
    invoke-virtual {v10, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_b

    .line 270
    :cond_11
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    .line 3103
    iget-object v2, v2, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 270
    invoke-static {v2}, Lcom/flurry/sdk/ek;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 272
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v2

    .line 274
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 275
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/bm;

    .line 3304
    iget-object v3, v3, Lcom/flurry/sdk/bm;->a:[B

    .line 276
    invoke-virtual {v10, v3}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_e

    :cond_12
    const/4 v2, 0x0

    .line 280
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 283
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 286
    invoke-virtual {v9, v2}, Ljava/security/DigestOutputStream;->on(Z)V

    .line 287
    invoke-virtual {v7}, Lcom/flurry/sdk/cs;->a()[B

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 289
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 290
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    invoke-static {v10}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_11

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v6, v10

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v10, 0x0

    goto :goto_11

    :catch_1
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    :goto_f
    const/4 v3, 0x6

    .line 292
    :try_start_2
    sget-object v4, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    const-string v5, "Error when generating report"

    invoke-static {v3, v4, v5, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 294
    invoke-static {v6}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    const/4 v6, 0x0

    .line 297
    :goto_10
    iput-object v6, v1, Lcom/flurry/sdk/bk;->a:[B

    return-void

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v10, v6

    .line 294
    :goto_11
    invoke-static {v10}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    throw v2
.end method
