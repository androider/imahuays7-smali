.class public Lcom/flurry/sdk/eu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:[C

.field private static final d:Ljava/lang/String;

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field private i:S

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-class v0, Lcom/flurry/sdk/eu;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eu;->b:Ljava/lang/String;

    const/4 v0, 0x4

    .line 56
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flurry/sdk/eu;->c:[C

    .line 57
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/flurry/sdk/eu;->c:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/flurry/sdk/eu;->d:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/flurry/sdk/eu;->c:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    const v1, 0x19e00

    add-int/2addr v0, v1

    sput v0, Lcom/flurry/sdk/eu;->e:I

    .line 72
    sget-object v0, Lcom/flurry/sdk/eu;->c:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 73
    sput v0, Lcom/flurry/sdk/eu;->f:I

    add-int/lit8 v0, v0, 0x2

    .line 74
    sput v0, Lcom/flurry/sdk/eu;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/flurry/sdk/eu;->h:I

    return-void

    :array_0
    .array-data 2
        0x46s
        0x43s
        0x42s
        0x4ds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget v0, Lcom/flurry/sdk/eu;->e:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    .line 84
    iget-object v0, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/eu;->c:[C

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 10

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/flurry/sdk/eu;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Loading crash breadcrumbs from %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    sget v0, Lcom/flurry/sdk/eu;->e:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v4, v2

    cmp-long v2, v0, v4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x6

    if-eqz v2, :cond_0

    .line 93
    sget-object v2, Lcom/flurry/sdk/eu;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v7, "Crash breadcrumbs invalid file length %s != %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v6

    iget-object p1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v5, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v2, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object v1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    return-void

    .line 100
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 109
    :try_start_1
    iget-object v5, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    sget-object v5, Lcom/flurry/sdk/eu;->b:Ljava/lang/String;

    const-string v7, "Issue reading breadcrumbs from file."

    invoke-static {v4, v5, v7}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 114
    :goto_0
    invoke-static {p1}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v2}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    .line 117
    iget-object p1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-eq v5, p1, :cond_1

    .line 118
    sget-object p1, Lcom/flurry/sdk/eu;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v7, "YCrashBreadcrumbs unexpected read size %s != %s"

    new-array v0, v0, [Ljava/lang/Object;

    .line 119
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    iget-object v5, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    .line 118
    invoke-static {v2, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p1, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    iput-object v1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    return-void

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    iget-object p1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p1

    sget-object v0, Lcom/flurry/sdk/eu;->c:[C

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    sget-object v0, Lcom/flurry/sdk/eu;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    sget-object v0, Lcom/flurry/sdk/eu;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v5, "YCrashBreadcrumbs invalid magic string: \'%s\'"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v0, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    iput-object v1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    return-void

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    sget v0, Lcom/flurry/sdk/eu;->f:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    iput-short p1, p0, Lcom/flurry/sdk/eu;->i:S

    .line 134
    iget-short p1, p0, Lcom/flurry/sdk/eu;->i:S

    if-ltz p1, :cond_5

    iget-short p1, p0, Lcom/flurry/sdk/eu;->i:S

    const/16 v0, 0xcf

    if-lt p1, v0, :cond_3

    goto :goto_2

    .line 140
    :cond_3
    iget-object p1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    sget v0, Lcom/flurry/sdk/eu;->g:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/flurry/sdk/eu;->j:Z

    return-void

    .line 135
    :cond_5
    :goto_2
    sget-object p1, Lcom/flurry/sdk/eu;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v2, "YCrashBreadcrumbs invalid index: \'%s\'"

    new-array v3, v3, [Ljava/lang/Object;

    iget-short v5, p0, Lcom/flurry/sdk/eu;->i:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p1, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    iput-object v1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    return-void

    .line 102
    :catch_1
    sget-object p1, Lcom/flurry/sdk/eu;->b:Ljava/lang/String;

    const-string v0, "Issue reading breadcrumbs file."

    invoke-static {v4, p1, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    iput-object v1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a(I)Lcom/flurry/sdk/et;
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    sget v1, Lcom/flurry/sdk/eu;->h:I

    mul-int/lit16 p1, p1, 0x200

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    iget-object p1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 175
    iget-object p1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 176
    iget-object v2, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    new-instance v2, Lcom/flurry/sdk/et;

    invoke-direct {v2, p1, v0, v1}, Lcom/flurry/sdk/et;-><init>(Ljava/lang/String;J)V

    return-object v2
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/et;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    return-object v0

    .line 189
    :cond_0
    iget-boolean v1, p0, Lcom/flurry/sdk/eu;->j:Z

    if-eqz v1, :cond_1

    .line 190
    iget-short v1, p0, Lcom/flurry/sdk/eu;->i:S

    :goto_0
    const/16 v2, 0xcf

    if-ge v1, v2, :cond_1

    .line 191
    invoke-direct {p0, v1}, Lcom/flurry/sdk/eu;->a(I)Lcom/flurry/sdk/et;

    move-result-object v2

    .line 192
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 198
    :goto_1
    iget-short v2, p0, Lcom/flurry/sdk/eu;->i:S

    if-ge v1, v2, :cond_2

    .line 199
    invoke-direct {p0, v1}, Lcom/flurry/sdk/eu;->a(I)Lcom/flurry/sdk/et;

    move-result-object v2

    .line 200
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/et;)V
    .locals 6

    monitor-enter p0

    .line 1024
    :try_start_0
    iget-object v0, p1, Lcom/flurry/sdk/et;->a:Ljava/lang/String;

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    sget-object p1, Lcom/flurry/sdk/eu;->b:Ljava/lang/String;

    const-string v0, "Breadcrumb may not be null or empty."

    invoke-static {p1, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 1028
    :cond_0
    :try_start_1
    iget-wide v1, p1, Lcom/flurry/sdk/et;->b:J

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0xfa

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 156
    iget-object v3, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    iget-short v4, p0, Lcom/flurry/sdk/eu;->i:S

    mul-int/lit16 v4, v4, 0x200

    sget v5, Lcom/flurry/sdk/eu;->h:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    iget-object v3, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 158
    iget-object v1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 160
    iget-object v1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    .line 163
    iget-short p1, p0, Lcom/flurry/sdk/eu;->i:S

    const/4 v0, 0x1

    add-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lcom/flurry/sdk/eu;->i:S

    .line 164
    iget-short p1, p0, Lcom/flurry/sdk/eu;->i:S

    const/16 v1, 0xcf

    if-lt p1, v1, :cond_1

    .line 165
    iput-short v2, p0, Lcom/flurry/sdk/eu;->i:S

    .line 166
    iput-boolean v0, p0, Lcom/flurry/sdk/eu;->j:Z

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    sget v0, Lcom/flurry/sdk/eu;->f:I

    iget-short v1, p0, Lcom/flurry/sdk/eu;->i:S

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 169
    iget-object p1, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    sget v0, Lcom/flurry/sdk/eu;->g:I

    iget-boolean v1, p0, Lcom/flurry/sdk/eu;->j:Z

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 143
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 1207
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1213
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/eu;->j:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xcf

    goto :goto_0

    :cond_1
    iget-short v0, p0, Lcom/flurry/sdk/eu;->i:S

    .line 219
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Total number of breadcrumbs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0}, Lcom/flurry/sdk/eu;->a()Ljava/util/List;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/et;

    .line 225
    invoke-virtual {v2}, Lcom/flurry/sdk/et;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 228
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 217
    monitor-exit p0

    throw v0
.end method
