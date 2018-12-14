.class public Lcom/yanzhenjie/andserver/f/e;
.super Ljava/lang/Object;
.source "HttpRequestParser.java"


# direct methods
.method public static a(Lorg/apache/httpcore/n;Ljava/lang/String;)J
    .locals 2

    .line 179
    invoke-interface {p0, p1}, Lorg/apache/httpcore/n;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 181
    invoke-interface {p0}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 183
    :try_start_0
    invoke-static {p0}, Lcom/yanzhenjie/andserver/f/a;->a(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const/16 p1, 0x3b

    .line 185
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 189
    :try_start_1
    invoke-static {p0}, Lcom/yanzhenjie/andserver/f/a;->a(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p0

    :catch_1
    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static a(Lorg/apache/httpcore/n;)Ljava/lang/String;
    .locals 5

    .line 129
    invoke-interface {p0}, Lorg/apache/httpcore/n;->e()Lorg/apache/httpcore/w;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/httpcore/w;->getUri()Ljava/lang/String;

    move-result-object p0

    const-string v0, "?"

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 132
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "#"

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 136
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    const-string v0, "/"

    .line 139
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 141
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const-string v4, "utf-8"

    .line 143
    invoke-static {v3, v4}, Lcom/yanzhenjie/andserver/f/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "/"

    .line 146
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method
