.class public abstract Lorg/eclipse/jetty/util/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 65
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 66
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 68
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/util/PatternMatcher;->matchPatterns(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V

    goto :goto_3

    .line 80
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 82
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/util/PatternMatcher;->matchPatterns(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public matchPatterns(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 92
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 94
    aget-object v1, p2, v0

    .line 95
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    :cond_1
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/PatternMatcher;->matched(Ljava/net/URI;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public abstract matched(Ljava/net/URI;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
