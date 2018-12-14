.class public Lorg/eclipse/jetty/server/CookieCutter;
.super Ljava/lang/Object;
.source "CookieCutter.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _cookies:[Ljavax/servlet/http/Cookie;

.field _fields:I

.field private _lastCookies:[Ljavax/servlet/http/Cookie;

.field _lazyFields:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/eclipse/jetty/server/CookieCutter;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/CookieCutter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCookieField(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v0, v1, :cond_3

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    return-void

    .line 99
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v0, v1, :cond_3

    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 103
    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v0, v1, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    return-void
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    iget-object v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/CookieCutter;->parseFields()V

    .line 65
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    return-object v0
.end method

.method protected parseFields()V
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 110
    iput-object v2, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 111
    iput-object v2, v1, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 118
    :goto_0
    iget-object v3, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    iget v4, v1, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v3, v4, :cond_0

    .line 119
    iget-object v3, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v4, v1, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v3, v4}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v5, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 122
    :goto_1
    iget v7, v1, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-ge v4, v7, :cond_1f

    .line 124
    iget-object v7, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v7, v4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 137
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    move-object v3, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v16

    move-object v11, v5

    move v2, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    :goto_2
    if-ge v5, v8, :cond_1e

    .line 139
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v18, v8

    const/16 v8, 0x22

    const/16 v19, 0x1

    if-eqz v6, :cond_6

    if-eqz v12, :cond_1

    move-object/from16 v20, v7

    const/4 v12, 0x0

    goto/16 :goto_14

    :cond_1
    if-eq v10, v8, :cond_3

    const/16 v8, 0x5c

    if-eq v10, v8, :cond_2

    goto/16 :goto_13

    :cond_2
    move-object/from16 v20, v7

    const/4 v12, 0x1

    goto/16 :goto_14

    :cond_3
    if-ne v5, v9, :cond_5

    if-eqz v13, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 160
    invoke-virtual {v7, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v5, 0x1

    .line 163
    invoke-virtual {v7, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    :cond_5
    :goto_3
    move v15, v5

    move-object/from16 v8, v16

    move-object/from16 v6, v17

    const/4 v10, 0x0

    goto/16 :goto_d

    :cond_6
    const/16 v8, 0x9

    if-eqz v13, :cond_d

    if-eq v10, v8, :cond_1d

    const/16 v8, 0x20

    if-eq v10, v8, :cond_1d

    const/16 v8, 0x22

    if-eq v10, v8, :cond_b

    const/16 v8, 0x3b

    if-eq v10, v8, :cond_9

    if-gez v14, :cond_7

    move v10, v5

    goto :goto_4

    :cond_7
    move v10, v14

    :goto_4
    if-ne v5, v9, :cond_8

    add-int/lit8 v8, v5, 0x1

    .line 218
    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    :goto_5
    move v15, v5

    move v14, v10

    move-object/from16 v8, v16

    move v10, v6

    move-object/from16 v6, v17

    goto/16 :goto_d

    :cond_8
    move v15, v5

    move-object/from16 v20, v7

    :goto_6
    move v14, v10

    goto/16 :goto_14

    :cond_9
    if-ltz v14, :cond_a

    add-int/lit8 v8, v15, 0x1

    .line 205
    invoke-virtual {v7, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_7
    move-object/from16 v17, v8

    goto :goto_8

    :cond_a
    const-string v8, ""

    goto :goto_7

    :goto_8
    move v10, v6

    move-object/from16 v8, v16

    move-object/from16 v6, v17

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    if-gez v14, :cond_c

    move v10, v5

    const/4 v6, 0x1

    goto :goto_9

    :cond_c
    move v10, v14

    :goto_9
    if-ne v5, v9, :cond_8

    add-int/lit8 v8, v5, 0x1

    .line 197
    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    :cond_d
    if-eq v10, v8, :cond_1d

    const/16 v8, 0x20

    if-eq v10, v8, :cond_1d

    const/16 v8, 0x22

    if-eq v10, v8, :cond_13

    const/16 v8, 0x3b

    if-eq v10, v8, :cond_11

    const/16 v8, 0x3d

    if-eq v10, v8, :cond_f

    if-gez v14, :cond_e

    move v10, v5

    goto :goto_a

    :cond_e
    move v10, v14

    :goto_a
    if-ne v5, v9, :cond_8

    add-int/lit8 v8, v5, 0x1

    .line 271
    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    goto :goto_5

    :cond_f
    if-ltz v14, :cond_10

    add-int/lit8 v8, v15, 0x1

    .line 260
    invoke-virtual {v7, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    :cond_10
    move-object/from16 v20, v7

    const/4 v13, 0x1

    const/4 v14, -0x1

    goto/16 :goto_14

    :cond_11
    if-ltz v14, :cond_12

    add-int/lit8 v8, v15, 0x1

    .line 252
    invoke-virtual {v7, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    :cond_12
    move v10, v6

    move-object/from16 v8, v16

    move-object/from16 v6, v17

    :goto_b
    const/4 v14, -0x1

    goto :goto_d

    :cond_13
    if-gez v14, :cond_14

    move v10, v5

    const/4 v6, 0x1

    goto :goto_c

    :cond_14
    move v10, v14

    :goto_c
    if-ne v5, v9, :cond_1c

    add-int/lit8 v8, v5, 0x1

    .line 242
    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    goto/16 :goto_5

    :goto_d
    if-eqz v6, :cond_1b

    if-eqz v8, :cond_1b

    .line 284
    invoke-static {v8}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 285
    invoke-static {v6}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v7

    :try_start_0
    const-string v7, "$"

    .line 289
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 291
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "$path"

    .line 292
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    if-eqz v3, :cond_18

    .line 295
    invoke-virtual {v3, v6}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V

    goto :goto_e

    :cond_15
    const-string v8, "$domain"

    .line 297
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    if-eqz v3, :cond_18

    .line 300
    invoke-virtual {v3, v6}, Ljavax/servlet/http/Cookie;->setDomain(Ljava/lang/String;)V

    goto :goto_e

    :cond_16
    const-string v8, "$port"

    .line 302
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    if-eqz v3, :cond_18

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "$port="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/servlet/http/Cookie;->setComment(Ljava/lang/String;)V

    goto :goto_e

    :cond_17
    const-string v8, "$version"

    .line 307
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 309
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    :cond_18
    :goto_e
    move-object v7, v3

    move-object v3, v11

    goto :goto_10

    .line 314
    :cond_19
    new-instance v7, Ljavax/servlet/http/Cookie;

    invoke-direct {v7, v8, v6}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v2, :cond_1a

    .line 316
    :try_start_1
    invoke-virtual {v7, v2}, Ljavax/servlet/http/Cookie;->setVersion(I)V

    goto :goto_f

    :catch_0
    move-exception v0

    goto :goto_11

    .line 317
    :cond_1a
    :goto_f
    invoke-static {v11, v7}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_10
    move-object v11, v3

    goto :goto_12

    :catch_1
    move-exception v0

    move-object v7, v3

    :goto_11
    move-object v3, v0

    .line 322
    sget-object v6, Lorg/eclipse/jetty/server/CookieCutter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :goto_12
    move-object v3, v7

    move v6, v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_14

    :cond_1b
    move-object/from16 v20, v7

    move-object/from16 v17, v6

    move-object/from16 v16, v8

    move v6, v10

    goto :goto_14

    :cond_1c
    move-object/from16 v20, v7

    move v15, v5

    goto/16 :goto_6

    :cond_1d
    :goto_13
    move-object/from16 v20, v7

    :goto_14
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v18

    move-object/from16 v7, v20

    goto/16 :goto_2

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    move v6, v2

    move-object v5, v11

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 331
    :cond_1f
    const-class v2, Ljavax/servlet/http/Cookie;

    invoke-static {v5, v2}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/servlet/http/Cookie;

    iput-object v2, v1, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 332
    iget-object v2, v1, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    iput-object v2, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    return-void
.end method

.method public setCookies([Ljavax/servlet/http/Cookie;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 73
    iput-object p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    return-void
.end method
