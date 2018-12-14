.class public Lcom/umeng/commonsdk/statistics/d/a;
.super Ljava/lang/Object;
.source "ABTest.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/c/g;


# static fields
.field private static i:Lcom/umeng/commonsdk/statistics/d/a;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->a:Z

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->b:I

    .line 21
    iput v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->c:I

    .line 22
    iput v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->d:I

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->e:F

    .line 24
    iput v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->f:F

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->g:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->h:Landroid/content/Context;

    .line 45
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d/a;->h:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, p2, p3}, Lcom/umeng/commonsdk/statistics/d/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/d/a;
    .locals 4

    const-class v0, Lcom/umeng/commonsdk/statistics/d/a;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/statistics/d/a;->i:Lcom/umeng/commonsdk/statistics/d/a;

    if-nez v1, :cond_0

    const-string v1, "client_test"

    const/4 v2, 0x0

    .line 36
    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "test_report_interval"

    const-string v3, "0"

    .line 37
    invoke-static {p0, v2, v3}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 38
    new-instance v3, Lcom/umeng/commonsdk/statistics/d/a;

    invoke-direct {v3, p0, v1, v2}, Lcom/umeng/commonsdk/statistics/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v3, Lcom/umeng/commonsdk/statistics/d/a;->i:Lcom/umeng/commonsdk/statistics/d/a;

    .line 41
    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/d/a;->i:Lcom/umeng/commonsdk/statistics/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "\\|"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 117
    aget-object v0, p1, v0

    const-string v1, "SIG13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 118
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 120
    :goto_0
    iget v2, p0, Lcom/umeng/commonsdk/statistics/d/a;->e:F

    cmpl-float v0, v2, v0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 121
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/d/a;->a:Z

    return-void

    .line 126
    :cond_2
    aget-object v0, p1, v2

    const-string v3, "SIG7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 127
    aget-object v0, p1, v4

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 128
    array-length v5, v0

    new-array v5, v5, [F

    const/4 v6, 0x0

    .line 129
    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_4

    .line 130
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move-object v5, v3

    :cond_4
    const/4 v0, 0x4

    .line 135
    aget-object v6, p1, v0

    const-string v7, "RPT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x5

    if-eqz v6, :cond_5

    const-string v0, "RPT"

    .line 136
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->g:Ljava/lang/String;

    .line 137
    aget-object p1, p1, v7

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 138
    array-length v0, p1

    new-array v3, v0, [I

    const/4 v0, 0x0

    .line 139
    :goto_2
    array-length v6, p1

    if-ge v0, v6, :cond_7

    .line 140
    aget-object v6, p1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 142
    :cond_5
    aget-object v0, p1, v0

    const-string v6, "DOM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    iput-boolean v4, p0, Lcom/umeng/commonsdk/statistics/d/a;->a:Z

    const-string v0, "DOM"

    .line 144
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->g:Ljava/lang/String;

    .line 146
    :try_start_0
    aget-object p1, p1, v7

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 147
    array-length v0, p1

    new-array v0, v0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    .line 148
    :goto_3
    :try_start_1
    array-length v6, p1

    if-ge v3, v6, :cond_6

    .line 149
    aget-object v6, p1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    :cond_6
    move-object v3, v0

    :catch_1
    :cond_7
    const/4 p1, 0x0

    .line 157
    :goto_4
    array-length v0, v5

    const/4 v6, -0x1

    if-ge p1, v0, :cond_9

    .line 158
    aget v0, v5, p1

    add-float/2addr v1, v0

    .line 159
    iget v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    const/4 p1, -0x1

    :goto_5
    if-eq p1, v6, :cond_a

    .line 166
    iput-boolean v4, p0, Lcom/umeng/commonsdk/statistics/d/a;->a:Z

    add-int/lit8 v0, p1, 0x1

    .line 167
    iput v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->d:I

    if-eqz v3, :cond_b

    .line 169
    aget p1, v3, p1

    iput p1, p0, Lcom/umeng/commonsdk/statistics/d/a;->b:I

    goto :goto_6

    .line 172
    :cond_a
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/d/a;->a:Z

    :cond_b
    :goto_6
    return-void
.end method

.method private b(Ljava/lang/String;I)F
    .locals 1

    mul-int/lit8 p2, p2, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, p2, 0x5

    .line 53
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x49800000    # 1048576.0f

    div-float/2addr p1, p2

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "\\|"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 185
    aget-object v1, p1, v1

    const-string v2, "SIG13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    .line 186
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 188
    :cond_1
    iget v1, p0, Lcom/umeng/commonsdk/statistics/d/a;->e:F

    cmpl-float v0, v1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 189
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/d/a;->a:Z

    return-void

    .line 194
    :cond_2
    aget-object v0, p1, v1

    const-string v2, "FIXED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 195
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 199
    aget-object v6, p1, v5

    const-string v7, "RPT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x5

    if-eqz v6, :cond_4

    const-string v4, "RPT"

    .line 200
    iput-object v4, p0, Lcom/umeng/commonsdk/statistics/d/a;->g:Ljava/lang/String;

    .line 201
    aget-object p1, p1, v7

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 202
    array-length v4, p1

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 203
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_6

    .line 204
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 206
    :cond_4
    aget-object v5, p1, v5

    const-string v6, "DOM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "DOM"

    .line 207
    iput-object v5, p0, Lcom/umeng/commonsdk/statistics/d/a;->g:Ljava/lang/String;

    .line 208
    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/d/a;->a:Z

    .line 210
    :try_start_0
    aget-object p1, p1, v7

    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 211
    array-length v5, p1

    new-array v5, v5, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    .line 212
    :goto_2
    :try_start_1
    array-length v6, p1

    if-ge v4, v6, :cond_5

    .line 213
    aget-object v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    :cond_5
    move-object v4, v5

    :catch_1
    :cond_6
    if-eq v0, v2, :cond_7

    .line 220
    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/d/a;->a:Z

    .line 221
    iput v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->d:I

    if-eqz v4, :cond_8

    sub-int/2addr v0, v3

    .line 223
    aget p1, v4, v0

    iput p1, p0, Lcom/umeng/commonsdk/statistics/d/a;->b:I

    goto :goto_3

    .line 226
    :cond_7
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/d/a;->a:Z

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/statistics/b/b$a;)V
    .locals 3

    const-string v0, "client_test"

    const/4 v1, 0x0

    .line 258
    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "test_report_interval"

    const-string v2, "0"

    .line 259
    invoke-virtual {p1, v1, v2}, Lcom/umeng/commonsdk/statistics/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 260
    invoke-virtual {p0, v0, p1}, Lcom/umeng/commonsdk/statistics/d/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 61
    iput p2, p0, Lcom/umeng/commonsdk/statistics/d/a;->c:I

    .line 62
    iget-object p2, p0, Lcom/umeng/commonsdk/statistics/d/a;->h:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xc

    .line 68
    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/umeng/commonsdk/statistics/d/a;->b(Ljava/lang/String;I)F

    move-result v0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/d/a;->e:F

    const/4 v0, 0x6

    .line 69
    invoke-direct {p0, p2, v0}, Lcom/umeng/commonsdk/statistics/d/a;->b(Ljava/lang/String;I)F

    move-result p2

    iput p2, p0, Lcom/umeng/commonsdk/statistics/d/a;->f:F

    const-string p2, "SIG7"

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 71
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/d/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "FIXED"

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 73
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/d/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 76
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/d/a;->a:Z

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/a/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void

    .line 64
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/d/a;->a:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " p13:"

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget v1, p0, Lcom/umeng/commonsdk/statistics/d/a;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " p07:"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget v1, p0, Lcom/umeng/commonsdk/statistics/d/a;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " policy:"

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget v1, p0, Lcom/umeng/commonsdk/statistics/d/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " interval:"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget v1, p0, Lcom/umeng/commonsdk/statistics/d/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
