.class public Lcom/umeng/commonsdk/statistics/b/a;
.super Ljava/lang/Object;
.source "Envelope.java"


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:[B

.field private h:[B

.field private i:I

.field private j:I

.field private k:I

.field private l:[B

.field private m:[B

.field private n:Z


# direct methods
.method private constructor <init>([BLjava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 34
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->a:[B

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->b:I

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->c:I

    const-string v1, "1.0"

    .line 38
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->e:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->f:[B

    .line 42
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->g:[B

    .line 43
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->h:[B

    .line 45
    iput v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->i:I

    .line 46
    iput v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->j:I

    .line 47
    iput v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->k:I

    .line 49
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->l:[B

    .line 50
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->m:[B

    .line 52
    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->n:Z

    if-eqz p1, :cond_1

    .line 56
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/b/a;->e:Ljava/lang/String;

    .line 61
    array-length p2, p1

    iput p2, p0, Lcom/umeng/commonsdk/statistics/b/a;->k:I

    .line 62
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/a/g;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/b/a;->l:[B

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/umeng/commonsdk/statistics/b/a;->j:I

    .line 65
    iput-object p3, p0, Lcom/umeng/commonsdk/statistics/b/a;->m:[B

    return-void

    .line 57
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "entity is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/statistics/b/a;
    .locals 9

    const/4 v0, 0x0

    .line 94
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/a/b;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/c/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "signature"

    .line 99
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "serial"

    const/4 v6, 0x1

    .line 100
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 102
    new-instance v7, Lcom/umeng/commonsdk/statistics/b/a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v7, p2, p1, v1}, Lcom/umeng/commonsdk/statistics/b/a;-><init>([BLjava/lang/String;[B)V

    .line 104
    invoke-virtual {v7, v4}, Lcom/umeng/commonsdk/statistics/b/a;->a(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v7, v5}, Lcom/umeng/commonsdk/statistics/b/a;->a(I)V

    .line 106
    invoke-virtual {v7}, Lcom/umeng/commonsdk/statistics/b/a;->b()V

    .line 108
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "serial"

    add-int/2addr v5, v6

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "signature"

    invoke-virtual {v7}, Lcom/umeng/commonsdk/statistics/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    invoke-virtual {v7, p0}, Lcom/umeng/commonsdk/statistics/b/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    .line 113
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/t;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 69
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/c/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "signature"

    .line 73
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a([BI)[B
    .locals 9

    .line 169
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->m:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/a/a;->b([B)[B

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->l:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/a/a;->b([B)[B

    move-result-object v1

    .line 172
    array-length v2, v0

    mul-int/lit8 v3, v2, 0x2

    .line 173
    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v2, :cond_0

    mul-int/lit8 v7, v5, 0x2

    .line 177
    aget-byte v8, v1, v5

    aput-byte v8, v3, v7

    add-int/2addr v7, v6

    .line 178
    aget-byte v6, v0, v5

    aput-byte v6, v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 184
    aget-byte v1, p1, v0

    aput-byte v1, v3, v0

    .line 185
    array-length v1, v3

    sub-int/2addr v1, v0

    sub-int/2addr v1, v6

    array-length v2, p1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v6

    aget-byte v2, p1, v2

    aput-byte v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    .line 189
    new-array p1, p1, [B

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v4

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v6

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    const/4 v0, 0x3

    ushr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    .line 196
    :goto_2
    array-length p2, v3

    if-ge v4, p2, :cond_2

    .line 197
    aget-byte p2, v3, v4

    rem-int/lit8 v0, v4, 0x4

    aget-byte v0, p1, v0

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/statistics/b/a;
    .locals 9

    const/4 v0, 0x0

    .line 121
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/a/b;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/c/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "signature"

    .line 126
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "serial"

    const/4 v6, 0x1

    .line 127
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 129
    new-instance v7, Lcom/umeng/commonsdk/statistics/b/a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v7, p2, p1, v1}, Lcom/umeng/commonsdk/statistics/b/a;-><init>([BLjava/lang/String;[B)V

    .line 131
    invoke-virtual {v7, v6}, Lcom/umeng/commonsdk/statistics/b/a;->a(Z)V

    .line 132
    invoke-virtual {v7, v4}, Lcom/umeng/commonsdk/statistics/b/a;->a(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v7, v5}, Lcom/umeng/commonsdk/statistics/b/a;->a(I)V

    .line 134
    invoke-virtual {v7}, Lcom/umeng/commonsdk/statistics/b/a;->b()V

    .line 136
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "serial"

    add-int/2addr v5, v6

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "signature"

    invoke-virtual {v7}, Lcom/umeng/commonsdk/statistics/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    invoke-virtual {v7, p0}, Lcom/umeng/commonsdk/statistics/b/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    .line 141
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/t;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private d()[B
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->a:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/b/a;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private e()[B
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->f:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    iget v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    iget v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->g:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/a/a;->b([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->f:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/umeng/commonsdk/statistics/b/a;->i:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/a/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/b/a;->f:[B

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/umeng/commonsdk/statistics/b/a;->n:Z

    return-void
.end method

.method public b()V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->f:[B

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/b/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->f:[B

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->n:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    .line 156
    new-array v1, v0, [B

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/b/a;->f:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->l:[B

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/a/a;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->l:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->f:[B

    iget v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->j:I

    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/b/a;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->g:[B

    .line 165
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/b/a;->e()[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->h:[B

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 8

    .line 245
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/a;->e:Ljava/lang/String;

    const-string v1, "umid"

    const/4 v2, 0x0

    .line 246
    invoke-static {p1, v1, v2}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/b/a;->f:[B

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/a/a;->a([B)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 248
    new-array v4, v3, [B

    .line 249
    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/b/a;->f:[B

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/a/a;->b([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/a/a;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 253
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "appkey"

    .line 254
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v5, "umid"

    .line 256
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v5, "signature"

    .line 258
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "checksum"

    .line 259
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v5, ".umeng"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 266
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v5, "exchangeIdentity.json"

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/umeng/commonsdk/statistics/a/c;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 268
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 272
    :goto_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "appkey"

    .line 273
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channel"

    .line 276
    invoke-static {p1}, Lcom/umeng/commonsdk/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    const-string v0, "umid"

    .line 278
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "exid.dat"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/a/c;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 282
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public c()[B
    .locals 2

    .line 220
    new-instance v0, Lcom/umeng/commonsdk/proguard/h;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/h;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/h;->a(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h;

    .line 223
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/h;->b(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h;

    .line 224
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->f:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/h;->c(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h;

    .line 225
    iget v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->i:I

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/h;->a(I)Lcom/umeng/commonsdk/proguard/h;

    .line 226
    iget v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->j:I

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/h;->b(I)Lcom/umeng/commonsdk/proguard/h;

    .line 227
    iget v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->k:I

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/h;->c(I)Lcom/umeng/commonsdk/proguard/h;

    .line 229
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->l:[B

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/h;->a([B)Lcom/umeng/commonsdk/proguard/h;

    .line 230
    iget-boolean v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->n:Z

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/h;->d(I)Lcom/umeng/commonsdk/proguard/h;

    .line 232
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->g:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/h;->d(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h;

    .line 233
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/a;->h:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/h;->e(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h;

    .line 236
    :try_start_0
    new-instance v1, Lcom/umeng/commonsdk/proguard/ak;

    invoke-direct {v1}, Lcom/umeng/commonsdk/proguard/ak;-><init>()V

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/l;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 238
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version : %s\n"

    const/4 v2, 0x1

    .line 289
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/b/a;->d:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "address : %s\n"

    .line 290
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/b/a;->e:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "signature : %s\n"

    .line 291
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/b/a;->f:[B

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/a/a;->a([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serial : %s\n"

    .line 292
    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/umeng/commonsdk/statistics/b/a;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp : %d\n"

    .line 293
    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/umeng/commonsdk/statistics/b/a;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "length : %d\n"

    .line 294
    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/umeng/commonsdk/statistics/b/a;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "guid : %s\n"

    .line 295
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/b/a;->g:[B

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/a/a;->a([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum : %s "

    .line 296
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/b/a;->h:[B

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/a/a;->a([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "codex : %d"

    .line 297
    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/umeng/commonsdk/statistics/b/a;->n:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
