.class public Lorg/jaxen/function/SubstringFunction;
.super Ljava/lang/Object;
.source "SubstringFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static unicodeSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5

    .line 237
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 239
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v1, p1, :cond_0

    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const v4, 0xd800

    if-lt v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-lt v1, p1, :cond_1

    .line 245
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .line 168
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    goto/16 :goto_3

    .line 173
    :cond_0
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object p1

    const/4 v3, 0x0

    .line 175
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p1, ""

    return-object p1

    .line 181
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/jaxen/function/StringLengthFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v5

    if-nez v5, :cond_2

    const-string p1, ""

    return-object p1

    :cond_2
    const/4 v6, 0x1

    .line 187
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v7

    .line 189
    invoke-virtual {v7}, Ljava/lang/Double;->isNaN()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string p1, ""

    return-object p1

    .line 193
    :cond_3
    invoke-static {v7, p1}, Lorg/jaxen/function/RoundFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    if-ne v0, v2, :cond_5

    .line 197
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object p2

    .line 199
    invoke-virtual {p2}, Ljava/lang/Double;->isNaN()Z

    move-result v2

    if-nez v2, :cond_4

    .line 200
    invoke-static {p2, p1}, Lorg/jaxen/function/RoundFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    move p1, v5

    :goto_0
    if-gez p1, :cond_6

    const-string p1, ""

    return-object p1

    :cond_6
    add-int/2addr p1, v6

    if-ne v0, v1, :cond_7

    move p1, v5

    :cond_7
    if-gez v6, :cond_8

    goto :goto_1

    :cond_8
    if-le v6, v5, :cond_9

    const-string p1, ""

    return-object p1

    :cond_9
    move v3, v6

    :goto_1
    if-le p1, v5, :cond_a

    move p1, v5

    goto :goto_2

    :cond_a
    if-ge p1, v3, :cond_b

    const-string p1, ""

    return-object p1

    .line 225
    :cond_b
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p2

    if-ne v5, p2, :cond_c

    .line 227
    invoke-virtual {v4, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 230
    :cond_c
    invoke-static {v4, v3, p1}, Lorg/jaxen/function/SubstringFunction;->unicodeSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 170
    :cond_d
    :goto_3
    new-instance p1, Lorg/jaxen/FunctionCallException;

    const-string p2, "substring() requires two or three arguments."

    invoke-direct {p1, p2}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
