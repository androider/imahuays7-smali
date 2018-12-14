.class public Lcom/raizlabs/android/dbflow/sql/d;
.super Ljava/lang/Object;
.source "SqlUtils.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/d;->a:[C

    return-void
.end method

.method public static a(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;)J
    .locals 2
    .param p0    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 243
    invoke-interface {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/i;->b(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p0

    .line 245
    :try_start_0
    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/structure/b/g;->c()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    return-wide v0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)Landroid/net/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 154
    invoke-static {p0, p1, p2, v0, v1}, Lcom/raizlabs/android/dbflow/sql/d;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;Ljava/lang/String;Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;Ljava/lang/Iterable;)Landroid/net/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            "Ljava/lang/Iterable<",
            "Lcom/raizlabs/android/dbflow/sql/language/o;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 81
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "dbflow"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "tableName"

    .line 83
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    if-eqz p3, :cond_1

    .line 88
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/raizlabs/android/dbflow/sql/language/o;

    .line 89
    invoke-interface {p2}, Lcom/raizlabs/android/dbflow/sql/language/o;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Lcom/raizlabs/android/dbflow/sql/language/o;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;Ljava/lang/String;Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 140
    invoke-static {p3}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/l$a;

    invoke-direct {v0, p3}, Lcom/raizlabs/android/dbflow/sql/language/l$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->a()Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object p3

    invoke-static {p3}, Lcom/raizlabs/android/dbflow/sql/language/m;->a(Lcom/raizlabs/android/dbflow/sql/language/l;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/raizlabs/android/dbflow/sql/language/m;->c(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 p4, 0x1

    .line 143
    new-array p4, p4, [Lcom/raizlabs/android/dbflow/sql/language/o;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    invoke-static {p0, p1, p2, p4}, Lcom/raizlabs/android/dbflow/sql/d;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;[Lcom/raizlabs/android/dbflow/sql/language/o;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;[Lcom/raizlabs/android/dbflow/sql/language/o;)Landroid/net/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/raizlabs/android/dbflow/sql/language/o;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            "[",
            "Lcom/raizlabs/android/dbflow/sql/language/o;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 108
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "dbflow"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "tableName"

    .line 110
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    if-eqz p3, :cond_2

    .line 114
    array-length p1, p3

    if-lez p1, :cond_2

    .line 115
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object v0, p3, p2

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/o;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 266
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 267
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 268
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 269
    sget-object v4, Lcom/raizlabs/android/dbflow/sql/d;->a:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 270
    sget-object v4, Lcom/raizlabs/android/dbflow/sql/d;->a:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
