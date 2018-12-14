.class public Lorg/eclipse/jetty/util/URIUtil;
.super Ljava/lang/Object;
.source "URIUtil.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final HTTPS_COLON:Ljava/lang/String; = "https:"

.field public static final HTTP_COLON:Ljava/lang/String; = "http:"

.field public static final SLASH:Ljava/lang/String; = "/"

.field public static final __CHARSET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.eclipse.jetty.util.URI.charset"

    const-string v1, "UTF-8"

    .line 50
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_9

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_8

    .line 415
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x3b

    .line 418
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const/16 v0, 0x3f

    .line 420
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-gez v0, :cond_4

    .line 424
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 426
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 427
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v0, -0x1

    .line 429
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_6

    const-string v2, "/"

    .line 431
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 433
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 437
    :cond_5
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const-string p0, "/"

    .line 441
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 442
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 445
    :cond_7
    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    .line 446
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_1
    return-object p0

    :cond_9
    :goto_2
    if-eqz p0, :cond_a

    if-nez p1, :cond_a

    return-object p0

    :cond_a
    return-object p1
.end method

.method public static canonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    if-eqz p0, :cond_19

    .line 476
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_e

    .line 479
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2f

    .line 480
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    :goto_0
    const/16 v3, 0x2e

    if-lez v0, :cond_2

    sub-int v4, v0, v2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v4, v2, 0x1

    .line 492
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_2

    goto :goto_1

    :pswitch_1
    add-int/lit8 v4, v2, 0x1

    .line 488
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v2, -0x1

    .line 498
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    move v12, v2

    move v2, v0

    move v0, v12

    goto :goto_0

    :cond_2
    if-lt v2, v0, :cond_3

    return-object p0

    .line 505
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_2
    if-lez v0, :cond_16

    sub-int v9, v0, v2

    packed-switch v9, :pswitch_data_1

    if-lez v6, :cond_12

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_12

    if-ltz v2, :cond_11

    move v8, v2

    goto/16 :goto_a

    :pswitch_2
    add-int/lit8 v9, v2, 0x1

    .line 548
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v3, :cond_7

    add-int/lit8 v9, v2, 0x2

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-eq v9, v3, :cond_4

    goto :goto_4

    :cond_4
    if-gez v7, :cond_5

    move v7, v0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v2, -0x1

    :goto_3
    if-ltz v0, :cond_6

    .line 564
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v1, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_2

    :cond_7
    :goto_4
    if-lez v6, :cond_12

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_12

    if-ltz v2, :cond_8

    move v8, v2

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    if-lez v8, :cond_12

    .line 552
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-ne v7, v9, :cond_12

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v3, :cond_12

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    :pswitch_3
    add-int/lit8 v9, v2, 0x1

    .line 515
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-eq v10, v3, :cond_a

    if-lez v6, :cond_12

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_12

    if-ltz v2, :cond_9

    move v8, v2

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    if-lez v8, :cond_12

    .line 520
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-ne v7, v9, :cond_12

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v3, :cond_12

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    :cond_a
    if-gez v2, :cond_b

    .line 526
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_b

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v1, :cond_b

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v1, :cond_b

    goto :goto_b

    :cond_b
    if-gez v7, :cond_c

    move v7, v0

    :cond_c
    if-ltz v2, :cond_f

    if-nez v2, :cond_d

    .line 532
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v1, :cond_d

    goto :goto_9

    .line 539
    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ne v0, v8, :cond_e

    move v8, v9

    goto :goto_7

    :cond_e
    move v8, v2

    :goto_7
    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_15

    .line 543
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-eq v9, v1, :cond_15

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 535
    :cond_f
    :goto_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v7, v8, :cond_10

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v1, :cond_10

    add-int/lit8 v7, v7, 0x1

    :cond_10
    move v8, v9

    goto :goto_b

    :cond_11
    const/4 v8, 0x0

    .line 572
    :goto_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-ne v7, v9, :cond_12

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v3, :cond_12

    add-int/lit8 v8, v8, 0x1

    :cond_12
    :goto_b
    if-gtz v6, :cond_14

    if-ltz v8, :cond_14

    if-lt v7, v8, :cond_14

    .line 580
    invoke-virtual {v4, v8, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-lez v6, :cond_13

    move v7, v0

    goto :goto_c

    :cond_13
    const/4 v7, -0x1

    :goto_c
    const/4 v8, -0x1

    :cond_14
    add-int/lit8 v0, v2, -0x1

    :goto_d
    if-ltz v0, :cond_15

    .line 587
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-eq v9, v1, :cond_15

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_15
    move v12, v2

    move v2, v0

    move v0, v12

    goto/16 :goto_2

    :cond_16
    if-lez v6, :cond_17

    const/4 p0, 0x0

    return-object p0

    :cond_17
    if-ltz v7, :cond_18

    .line 597
    invoke-virtual {v4, v8, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 599
    :cond_18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_e
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static compactPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_a

    .line 610
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_6

    .line 614
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const/16 v5, 0x3f

    const/16 v6, 0x2f

    if-ge v2, v0, :cond_4

    .line 620
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v6, :cond_2

    if-eq v7, v5, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-ge v3, v4, :cond_5

    return-object p0

    .line 639
    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 640
    invoke-virtual {v4, p0, v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    :goto_3
    if-ge v2, v0, :cond_9

    .line 645
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v6, :cond_7

    if-eq v7, v5, :cond_6

    .line 657
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    goto :goto_4

    .line 649
    :cond_6
    invoke-virtual {v4, p0, v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_7
    add-int/lit8 v8, v3, 0x1

    if-nez v3, :cond_8

    .line 653
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    move v3, v8

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 662
    :cond_9
    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_6
    return-object p0
.end method

.method public static decodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 275
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v3

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v0, v1, :cond_6

    .line 279
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x25

    if-ne v7, v8, :cond_2

    add-int/lit8 v8, v0, 0x2

    if-ge v8, v1, :cond_2

    if-nez v3, :cond_1

    .line 285
    new-array v3, v1, [C

    .line 286
    new-array v4, v1, [B

    .line 287
    invoke-virtual {p0, v2, v0, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x10

    const/4 v10, 0x2

    .line 289
    invoke-static {p0, v0, v10, v9}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    move v5, v7

    move v0, v8

    goto :goto_2

    :cond_2
    const/16 v8, 0x3b

    if-ne v7, v8, :cond_3

    if-nez v3, :cond_6

    .line 297
    new-array v3, v1, [C

    .line 298
    invoke-virtual {p0, v2, v0, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_3

    :cond_3
    if-nez v4, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    if-lez v5, :cond_5

    .line 316
    :try_start_0
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v8, v4, v2, v5, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 320
    :catch_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 322
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v8, v2, v5, v3, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 323
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v6, v5

    const/4 v5, 0x0

    :cond_5
    add-int/lit8 v8, v6, 0x1

    .line 327
    aput-char v7, v3, v6

    move v6, v8

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v6

    :goto_3
    if-nez v3, :cond_7

    return-object p0

    :cond_7
    if-lez v5, :cond_8

    .line 340
    :try_start_1
    new-instance p0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v5, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 344
    :catch_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 346
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v0, p0

    .line 350
    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static decodePath([BII)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    add-int v4, v1, p1

    .line 365
    aget-byte v5, p0, v4

    const/16 v6, 0x25

    if-ne v5, v6, :cond_0

    add-int/lit8 v6, v1, 0x2

    if-ge v6, p2, :cond_0

    add-int/lit8 v4, v4, 0x1

    const/16 v1, 0x10

    const/4 v5, 0x2

    .line 369
    invoke-static {p0, v4, v5, v1}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v5, v1

    move v1, v6

    goto :goto_1

    :cond_0
    const/16 v4, 0x3b

    if-ne v5, v4, :cond_1

    move p2, v1

    goto :goto_4

    :cond_1
    if-nez v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 385
    new-array v2, p2, [B

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    add-int v6, v4, p1

    .line 387
    aget-byte v6, p0, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v3, 0x1

    .line 390
    aput-byte v5, v2, v3

    move v3, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    if-nez v2, :cond_5

    .line 394
    sget-object v0, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 395
    :cond_5
    sget-object p0, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v2, v0, v3, p0}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 67
    invoke-static {v0, p0}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static encodePath(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_3

    const/4 v2, 0x0

    .line 83
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    .line 104
    :try_start_0
    sget-object p0, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 97
    :sswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_2

    .line 104
    :goto_1
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_3

    :catch_0
    move-exception p0

    .line 108
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    move-object v2, v0

    :goto_3
    if-nez p0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v2

    .line 120
    :cond_3
    monitor-enter p0

    if-eqz v0, :cond_5

    .line 124
    :goto_4
    :try_start_2
    array-length p1, v0

    if-ge v1, p1, :cond_6

    .line 126
    aget-byte p1, v0, v1

    sparse-switch p1, :sswitch_data_1

    if-gez p1, :cond_4

    const/16 v2, 0x25

    .line 159
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :sswitch_1
    const-string p1, "%3F"

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :sswitch_2
    const-string p1, "%3E"

    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :sswitch_3
    const-string p1, "%3C"

    .line 148
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :sswitch_4
    const-string p1, "%3B"

    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :sswitch_5
    const-string p1, "%27"

    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :sswitch_6
    const-string p1, "%25"

    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :sswitch_7
    const-string p1, "%23"

    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :sswitch_8
    const-string p1, "%22"

    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :sswitch_9
    const-string p1, "%20"

    .line 154
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 160
    :goto_5
    invoke-static {p1, p0}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(BLjava/lang/Appendable;)V

    goto :goto_6

    :cond_4
    int-to-char p1, p1

    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_9

    .line 171
    :cond_5
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_2

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :sswitch_a
    const-string v0, "%3F"

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :sswitch_b
    const-string v0, "%3E"

    .line 198
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :sswitch_c
    const-string v0, "%3C"

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :sswitch_d
    const-string v0, "%3B"

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :sswitch_e
    const-string v0, "%27"

    .line 192
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :sswitch_f
    const-string v0, "%25"

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :sswitch_10
    const-string v0, "%23"

    .line 186
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :sswitch_11
    const-string v0, "%22"

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :sswitch_12
    const-string v0, "%20"

    .line 201
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 209
    :cond_6
    monitor-exit p0

    return-object p0

    :goto_9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_9
        0x22 -> :sswitch_8
        0x23 -> :sswitch_7
        0x25 -> :sswitch_6
        0x27 -> :sswitch_5
        0x3b -> :sswitch_4
        0x3c -> :sswitch_3
        0x3e -> :sswitch_2
        0x3f -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x20 -> :sswitch_12
        0x22 -> :sswitch_11
        0x23 -> :sswitch_10
        0x25 -> :sswitch_f
        0x27 -> :sswitch_e
        0x3b -> :sswitch_d
        0x3c -> :sswitch_c
        0x3e -> :sswitch_b
        0x3f -> :sswitch_a
    .end sparse-switch
.end method

.method public static encodeString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x25

    if-nez p0, :cond_3

    const/4 v2, 0x0

    .line 228
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 230
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_1

    .line 231
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_2
    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 241
    :cond_3
    monitor-enter p0

    .line 243
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_5

    .line 246
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    goto :goto_3

    .line 252
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 248
    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x10

    .line 249
    invoke-static {p0, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->append(Ljava/lang/StringBuilder;BI)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 254
    :cond_6
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static hasScheme(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 672
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 674
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7a

    if-le v2, v3, :cond_4

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x5a

    if-le v2, v3, :cond_4

    :cond_2
    if-lez v1, :cond_5

    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    const/16 v3, 0x39

    if-le v2, v3, :cond_4

    :cond_3
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public static parentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "/"

    .line 459
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2f

    .line 461
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 463
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method
