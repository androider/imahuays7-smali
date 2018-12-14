.class public Lorg/eclipse/jetty/util/UrlEncoded;
.super Lorg/eclipse/jetty/util/MultiMap;
.source "UrlEncoded.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ENCODING:Ljava/lang/String;

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-class v0, Lorg/eclipse/jetty/util/UrlEncoded;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v0, "org.eclipse.jetty.util.UrlEncoding.charset"

    const-string v1, "UTF-8"

    .line 58
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    .line 69
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 75
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    .line 76
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 82
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/UrlEncoded;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/MultiMap;-><init>(Lorg/eclipse/jetty/util/MultiMap;)V

    return-void
.end method

.method public static decode88591To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    monitor-enter p1

    .line 391
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    .line 399
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_a

    int-to-char v5, v5

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_8

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_6

    packed-switch v5, :pswitch_data_0

    .line 459
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 404
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 405
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    if-eqz v3, :cond_2

    .line 408
    invoke-virtual {p1, v3, v5}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 410
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, ""

    .line 412
    invoke-virtual {p1, v5, v3}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    if-lez p3, :cond_4

    .line 416
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v3

    if-le v3, p3, :cond_4

    .line 417
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Form too many keys"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move-object v3, v1

    goto :goto_2

    .line 435
    :pswitch_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0x75

    if-ne v6, v5, :cond_5

    .line 438
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_9

    .line 441
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ltz v7, :cond_9

    .line 444
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ltz v8, :cond_9

    .line 446
    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0xc

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    if-ltz v5, :cond_9

    .line 452
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_9

    .line 454
    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    .line 423
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 426
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2

    :cond_8
    const/16 v5, 0x20

    .line 431
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    :goto_2
    if-ltz p2, :cond_0

    add-int/lit8 v4, v4, 0x1

    if-le v4, p2, :cond_0

    .line 463
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Form too large"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-eqz v3, :cond_c

    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_b

    const-string p0, ""

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 469
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 470
    invoke-virtual {p1, v3, p0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 472
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_d

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 476
    :cond_d
    :goto_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v5, 0x4

    const/16 v6, 0x75

    const/4 v7, 0x0

    const/16 v8, 0x25

    const/16 v9, 0x20

    const/16 v10, 0x2b

    const/16 v11, 0xff

    const/16 v12, 0x10

    if-eqz v4, :cond_13

    .line 727
    invoke-static/range {p3 .. p3}, Lorg/eclipse/jetty/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto/16 :goto_b

    :cond_0
    move-object v15, v7

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_10

    add-int v13, v2, v7

    .line 827
    :try_start_0
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ltz v14, :cond_d

    if-le v14, v11, :cond_1

    goto/16 :goto_8

    :cond_1
    if-ne v14, v10, :cond_3

    if-nez v15, :cond_2

    .line 842
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 843
    invoke-virtual {v15, v1, v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 846
    :cond_2
    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_9

    :cond_3
    if-ne v14, v8, :cond_c

    if-nez v15, :cond_4

    .line 852
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 853
    invoke-virtual {v15, v1, v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 856
    :cond_4
    new-array v13, v3, [B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v9, 0x0

    :goto_1
    if-ltz v14, :cond_b

    if-gt v14, v11, :cond_b

    if-ne v14, v8, :cond_8

    add-int/lit8 v14, v7, 0x2

    const/16 v16, 0x3f

    if-ge v14, v3, :cond_7

    add-int v14, v2, v7

    add-int/lit8 v8, v14, 0x1

    .line 866
    :try_start_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    if-ne v6, v11, :cond_6

    add-int/lit8 v8, v7, 0x6

    if-ge v8, v3, :cond_5

    add-int/lit8 v14, v14, 0x2

    .line 872
    :try_start_2
    new-instance v7, Ljava/lang/String;

    invoke-static {v1, v14, v5, v12}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/String;-><init>([C)V

    .line 873
    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 874
    array-length v11, v7

    const/4 v14, 0x0

    invoke-static {v7, v14, v13, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 875
    array-length v7, v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    add-int/2addr v9, v7

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v9, 0x1

    .line 879
    :try_start_3
    aput-byte v16, v13, v9
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    move v7, v3

    goto :goto_5

    :catch_1
    move-exception v0

    move v9, v8

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x3

    const/4 v11, 0x2

    .line 887
    :try_start_4
    invoke-static {v1, v8, v11, v12}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v13, v9
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_2
    move v8, v7

    :goto_3
    move-object v7, v0

    .line 893
    :try_start_5
    sget-object v11, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11, v7}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    add-int/lit8 v7, v9, 0x1

    .line 894
    aput-byte v16, v13, v9

    move v9, v7

    :goto_4
    move v7, v8

    goto :goto_6

    :cond_7
    add-int/lit8 v7, v9, 0x1

    .line 899
    aput-byte v16, v13, v9

    move v9, v7

    move v7, v3

    goto :goto_6

    :cond_8
    if-ne v14, v10, :cond_9

    add-int/lit8 v8, v9, 0x1

    const/16 v11, 0x20

    .line 905
    aput-byte v11, v13, v9

    add-int/lit8 v7, v7, 0x1

    :goto_5
    move v9, v8

    goto :goto_6

    :cond_9
    add-int/lit8 v8, v9, 0x1

    int-to-byte v11, v14

    .line 910
    aput-byte v11, v13, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :goto_6
    if-lt v7, v3, :cond_a

    goto :goto_7

    :cond_a
    add-int v8, v2, v7

    .line 916
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v8, 0x25

    const/16 v11, 0xff

    goto/16 :goto_1

    :cond_b
    :goto_7
    add-int/lit8 v7, v7, -0x1

    .line 920
    new-instance v8, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v8, v13, v11, v9, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_c
    if-eqz v15, :cond_f

    .line 924
    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_d
    :goto_8
    if-nez v15, :cond_e

    .line 832
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/lit8 v13, v13, 0x1

    .line 833
    invoke-virtual {v8, v1, v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-object v15, v8

    goto :goto_9

    .line 836
    :cond_e
    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_f
    :goto_9
    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x25

    const/16 v9, 0x20

    const/16 v11, 0xff

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :cond_10
    if-nez v15, :cond_12

    if-nez v2, :cond_11

    .line 929
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_11

    return-object v1

    :cond_11
    add-int/2addr v3, v2

    .line 931
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 934
    :cond_12
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    return-object v1

    .line 938
    :goto_a
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_13
    :goto_b
    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1f

    add-int v8, v2, v4

    .line 733
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ltz v9, :cond_1c

    const/16 v11, 0xff

    if-le v9, v11, :cond_14

    goto/16 :goto_14

    :cond_14
    if-ne v9, v10, :cond_16

    if-nez v7, :cond_15

    .line 748
    new-instance v7, Lorg/eclipse/jetty/util/Utf8StringBuffer;

    invoke-direct {v7, v3}, Lorg/eclipse/jetty/util/Utf8StringBuffer;-><init>(I)V

    .line 749
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 752
    :cond_15
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v13, 0x20

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    const/4 v11, 0x2

    const/16 v14, 0x25

    goto/16 :goto_15

    :cond_16
    const/16 v13, 0x20

    const/16 v14, 0x25

    if-ne v9, v14, :cond_1b

    if-nez v7, :cond_17

    .line 758
    new-instance v7, Lorg/eclipse/jetty/util/Utf8StringBuffer;

    invoke-direct {v7, v3}, Lorg/eclipse/jetty/util/Utf8StringBuffer;-><init>(I)V

    .line 759
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    :cond_17
    add-int/lit8 v9, v4, 0x2

    const v15, 0xfffd

    if-ge v9, v3, :cond_1a

    add-int/lit8 v10, v8, 0x1

    .line 766
    :try_start_6
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11
    :try_end_6
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_a

    if-ne v6, v11, :cond_19

    add-int/lit8 v4, v4, 0x5

    if-ge v4, v3, :cond_18

    add-int/lit8 v8, v8, 0x2

    .line 772
    :try_start_7
    new-instance v9, Ljava/lang/String;

    invoke-static {v1, v8, v5, v12}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([C)V

    .line 773
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    move v9, v4

    const/4 v11, 0x2

    goto :goto_e

    :catch_5
    move-exception v0

    move v9, v4

    const/4 v11, 0x2

    goto :goto_10

    .line 778
    :cond_18
    :try_start_8
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6

    move v4, v3

    :goto_d
    const/4 v11, 0x2

    goto :goto_13

    :catch_6
    move-exception v0

    move-object v4, v0

    move v9, v3

    const/4 v11, 0x2

    goto :goto_f

    :catch_7
    move-exception v0

    move-object v4, v0

    move v9, v3

    const/4 v11, 0x2

    goto :goto_11

    :cond_19
    const/4 v11, 0x2

    .line 785
    :try_start_9
    invoke-static {v1, v10, v11, v12}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v4

    int-to-byte v4, v4

    .line 786
    invoke-virtual {v7, v4}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->append(B)V
    :try_end_9
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    goto :goto_e

    :catch_9
    move-exception v0

    goto :goto_10

    :catch_a
    move-exception v0

    const/4 v11, 0x2

    move v9, v4

    :goto_e
    move-object v4, v0

    .line 796
    :goto_f
    sget-object v8, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 797
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_12

    :catch_b
    move-exception v0

    const/4 v11, 0x2

    move v9, v4

    :goto_10
    move-object v4, v0

    .line 791
    :goto_11
    sget-object v8, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/Object;

    invoke-interface {v8, v10, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    sget-object v5, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :goto_12
    move v4, v9

    :goto_13
    const/4 v5, 0x0

    goto :goto_15

    :cond_1a
    const/4 v5, 0x0

    const/4 v11, 0x2

    .line 802
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    goto :goto_15

    :cond_1b
    const/4 v5, 0x0

    const/4 v11, 0x2

    if-eqz v7, :cond_1e

    .line 807
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_15

    :cond_1c
    :goto_14
    const/4 v5, 0x0

    const/4 v11, 0x2

    const/16 v13, 0x20

    const/16 v14, 0x25

    if-nez v7, :cond_1d

    .line 738
    new-instance v7, Lorg/eclipse/jetty/util/Utf8StringBuffer;

    invoke-direct {v7, v3}, Lorg/eclipse/jetty/util/Utf8StringBuffer;-><init>(I)V

    .line 739
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v9, v1, v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 742
    :cond_1d
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1e
    :goto_15
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x4

    const/16 v10, 0x2b

    goto/16 :goto_c

    :cond_1f
    if-nez v7, :cond_21

    if-nez v2, :cond_20

    .line 812
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_20

    return-object v1

    :cond_20
    add-int/2addr v3, v2

    .line 814
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 817
    :cond_21
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->toReplacedString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static decodeTo(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 606
    sget-object p2, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    :cond_0
    const-string v0, "UTF-8"

    .line 609
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V

    return-void

    :cond_1
    const-string v0, "ISO-8859-1"

    .line 615
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/UrlEncoded;->decode88591To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V

    return-void

    :cond_2
    const-string v0, "UTF-16"

    .line 621
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 623
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf16To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V

    return-void

    .line 628
    :cond_3
    monitor-enter p1

    .line 636
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    .line 640
    :cond_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    if-lez v5, :cond_f

    int-to-char v6, v5

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_d

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_a

    packed-switch v6, :pswitch_data_0

    .line 699
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    goto/16 :goto_3

    .line 645
    :pswitch_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ""

    goto :goto_0

    .line 646
    :cond_5
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 647
    :goto_0
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    if-eqz v3, :cond_6

    .line 650
    invoke-virtual {p1, v3, v5}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    .line 652
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, ""

    .line 654
    invoke-virtual {p1, v5, v3}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_1
    if-lez p4, :cond_8

    .line 658
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v3

    if-le v3, p4, :cond_8

    .line 659
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Form too many keys"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    move-object v3, v1

    goto/16 :goto_3

    .line 675
    :pswitch_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0x75

    if-ne v6, v5, :cond_9

    .line 678
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_e

    .line 681
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ltz v7, :cond_e

    .line 684
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ltz v8, :cond_e

    .line 686
    new-instance v9, Ljava/lang/String;

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0xc

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write([B)V

    goto :goto_3

    :cond_9
    if-ltz v5, :cond_e

    .line 693
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_e

    .line 695
    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_3

    :cond_a
    if-eqz v3, :cond_b

    .line 664
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_3

    .line 667
    :cond_b
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v3

    if-nez v3, :cond_c

    const-string v3, ""

    goto :goto_2

    .line 668
    :cond_c
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 669
    :goto_2
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_3

    :cond_d
    const/16 v5, 0x20

    .line 672
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    :cond_e
    :goto_3
    add-int/lit8 v4, v4, 0x1

    if-ltz p3, :cond_4

    if-le v4, p3, :cond_4

    .line 705
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Form too large"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 708
    :cond_f
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result p0

    if-eqz v3, :cond_11

    if-nez p0, :cond_10

    const-string p0, ""

    goto :goto_4

    .line 711
    :cond_10
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 712
    :goto_4
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    .line 713
    invoke-virtual {p1, v3, p0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_11
    if-lez p0, :cond_12

    .line 716
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 717
    :cond_12
    :goto_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 189
    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    return-void
.end method

.method public static decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V
    .locals 9

    if-nez p2, :cond_0

    .line 199
    sget-object p2, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 201
    :cond_0
    monitor-enter p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 207
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v0, v6, :cond_a

    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2b

    if-eq v6, v8, :cond_6

    const/16 v8, 0x3d

    if-eq v6, v8, :cond_7

    packed-switch v6, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    sub-int v6, v0, v4

    sub-int/2addr v6, v7

    if-nez v6, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 214
    invoke-static {p0, v4, v6, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v3, :cond_3

    .line 220
    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    .line 222
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, ""

    .line 224
    invoke-virtual {p1, v4, v3}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    if-lez p3, :cond_5

    .line 228
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v3

    if-le v3, p3, :cond_5

    .line 229
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Form too many keys"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move v4, v0

    move-object v3, v1

    goto :goto_4

    :cond_6
    :pswitch_1
    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    add-int/lit8 v3, v4, 0x1

    sub-int v4, v0, v4

    sub-int/2addr v4, v7

    .line 234
    invoke-static {p0, v3, v4, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_3
    move v4, v0

    :goto_4
    const/4 v5, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    if-eqz v3, :cond_d

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v4

    sub-int/2addr p3, v7

    if-nez p3, :cond_b

    const-string p0, ""

    goto :goto_6

    :cond_b
    if-eqz v5, :cond_c

    add-int/2addr v4, v7

    .line 250
    invoke-static {p0, v4, p3, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_c
    add-int/2addr v4, v7

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 251
    :goto_6
    invoke-virtual {p1, v3, p0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 253
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-ge v4, p3, :cond_f

    if-eqz v5, :cond_e

    add-int/lit8 p3, v4, 0x1

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    sub-int/2addr v0, v7

    invoke-static {p0, p3, v0, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_e
    add-int/2addr v4, v7

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_7
    if-eqz p0, :cond_f

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_f

    const-string p2, ""

    .line 260
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    :cond_f
    :goto_8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static decodeUtf16To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-16"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 590
    new-instance p0, Ljava/io/StringWriter;

    const/16 v1, 0x2000

    invoke-direct {p0, v1}, Ljava/io/StringWriter;-><init>(I)V

    int-to-long v1, p2

    .line 591
    invoke-static {v0, p0, v1, v2}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;J)V

    .line 593
    invoke-virtual {p0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTF-16"

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    return-void
.end method

.method public static decodeUtf8To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    monitor-enter p1

    .line 490
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    .line 498
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v5, :cond_a

    int-to-char v6, v5

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_8

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_6

    packed-switch v6, :pswitch_data_0

    int-to-byte v5, v5

    .line 560
    :try_start_1
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto/16 :goto_3

    :catch_0
    move-exception v5

    goto/16 :goto_2

    .line 505
    :pswitch_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 506
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    if-eqz v3, :cond_2

    .line 509
    invoke-virtual {p1, v3, v5}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 511
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, ""

    .line 513
    invoke-virtual {p1, v5, v6}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    if-lez p3, :cond_4

    .line 517
    :try_start_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v3

    if-le v3, p3, :cond_4

    .line 518
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Form too many keys"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v5

    move-object v3, v2

    goto/16 :goto_2

    :cond_4
    move-object v3, v2

    goto/16 :goto_3

    .line 536
    :pswitch_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0x75

    if-ne v6, v5, :cond_5

    .line 539
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_9

    .line 542
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ltz v7, :cond_9

    .line 545
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ltz v8, :cond_9

    .line 547
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0xc

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    if-ltz v5, :cond_9

    .line 553
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_9

    .line 555
    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    int-to-byte v5, v5

    .line 524
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_3

    .line 527
    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 528
    :try_start_4
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V
    :try_end_4
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v5

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v10, v5

    move-object v5, v3

    move-object v3, v10

    goto :goto_2

    :cond_8
    const/16 v5, 0x20

    .line 532
    :try_start_5
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V
    :try_end_5
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 566
    :goto_2
    :try_start_6
    sget-object v6, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    sget-object v6, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    if-ltz p2, :cond_0

    add-int/lit8 v4, v4, 0x1

    if-le v4, p2, :cond_0

    .line 570
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Form too large"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-eqz v3, :cond_c

    .line 575
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_b

    const-string p0, ""

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 576
    :goto_4
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 577
    invoke-virtual {p1, v3, p0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 579
    :cond_c
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_d

    .line 581
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 583
    :cond_d
    :goto_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;)V
    .locals 1

    .line 275
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;Lorg/eclipse/jetty/util/Utf8StringBuilder;)V

    return-void
.end method

.method public static decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;Lorg/eclipse/jetty/util/Utf8StringBuilder;)V
    .locals 7

    .line 288
    monitor-enter p3

    add-int/2addr p2, p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-ge p1, p2, :cond_9

    .line 297
    :try_start_0
    aget-byte v2, p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v2, 0xff

    int-to-char v3, v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_8

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_6

    packed-switch v3, :pswitch_data_0

    .line 356
    :try_start_1
    invoke-virtual {p4, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto/16 :goto_6

    :catch_0
    move-exception v2

    goto/16 :goto_5

    .line 303
    :pswitch_0
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    :goto_1
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {p3, v1, v2}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    .line 309
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ""

    .line 311
    invoke-virtual {p3, v2, v3}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_2
    move-object v1, v0

    goto/16 :goto_6

    :pswitch_1
    add-int/lit8 v2, p1, 0x2

    const v3, 0xfffd

    if-ge v2, p2, :cond_5

    const/16 v2, 0x75

    add-int/lit8 v4, p1, 0x1

    .line 334
    aget-byte v5, p0, v4
    :try_end_1
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v5, :cond_4

    add-int/lit8 p1, v4, 0x4

    if-ge p1, p2, :cond_3

    .line 338
    :try_start_2
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object p1
    :try_end_2
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v4, 0x1

    :try_start_3
    aget-byte v3, p0, v2

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    add-int/lit8 v2, v2, 0x1

    aget-byte v4, p0, v2

    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v4, p0, v2

    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v4, p0, v2

    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p1

    move v6, v2

    move-object v2, p1

    move p1, v6

    goto :goto_5

    .line 341
    :cond_3
    :try_start_4
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 346
    :cond_4
    aget-byte p1, p0, v4

    invoke-static {p1}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result p1
    :try_end_4
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    shl-int/lit8 p1, p1, 0x4

    add-int/lit8 v2, v4, 0x1

    :try_start_5
    aget-byte v3, p0, v2

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    add-int/2addr p1, v3

    int-to-byte p1, p1

    invoke-virtual {p4, p1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V
    :try_end_5
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    move p1, v2

    goto :goto_6

    :catch_2
    move-exception v2

    move p1, v4

    goto :goto_5

    .line 350
    :cond_5
    :try_start_6
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    move p1, p2

    goto :goto_6

    :cond_6
    if-eqz v1, :cond_7

    .line 320
    invoke-virtual {p4, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_6

    .line 323
    :cond_7
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 324
    :try_start_7
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V
    :try_end_7
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v1, v2

    goto :goto_6

    :catch_3
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_5

    :cond_8
    const/16 v2, 0x20

    .line 328
    :try_start_8
    invoke-virtual {p4, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V
    :try_end_8
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 362
    :goto_5
    :try_start_9
    sget-object v3, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    sget-object v3, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto :goto_9

    :cond_9
    if-eqz v1, :cond_b

    .line 369
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_a

    const-string p0, ""

    goto :goto_7

    :cond_a
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toReplacedString()Ljava/lang/String;

    move-result-object p0

    .line 370
    :goto_7
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 371
    invoke-virtual {p3, v1, p0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 373
    :cond_b
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_c

    .line 375
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toReplacedString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p3, p0, p1}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    :cond_c
    :goto_8
    monitor-exit p3

    return-void

    :goto_9
    monitor-exit p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encode(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    if-nez p1, :cond_0

    .line 132
    sget-object p1, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 137
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 139
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 143
    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x26

    const/16 v5, 0x3d

    if-nez v3, :cond_2

    .line 147
    invoke-static {v2, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_7

    .line 149
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_7

    if-lez v6, :cond_3

    .line 156
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    :cond_3
    invoke-static {v1, v6}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    .line 158
    invoke-static {v2, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_5

    .line 162
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 165
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {v7, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    .line 169
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 172
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 175
    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 951
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    .line 962
    sget-object p1, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 966
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 971
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 974
    :goto_0
    array-length v1, v0

    .line 975
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_1
    if-ge v4, v1, :cond_8

    .line 981
    aget-byte v7, v0, v4

    const/16 v8, 0x20

    if-ne v7, v8, :cond_1

    add-int/lit8 v5, v6, 0x1

    const/16 v7, 0x2b

    .line 986
    aput-byte v7, v2, v6

    move v6, v5

    :goto_2
    const/4 v5, 0x0

    goto :goto_4

    :cond_1
    const/16 v8, 0x61

    if-lt v7, v8, :cond_2

    const/16 v8, 0x7a

    if-le v7, v8, :cond_4

    :cond_2
    const/16 v8, 0x41

    if-lt v7, v8, :cond_3

    const/16 v8, 0x5a

    if-le v7, v8, :cond_4

    :cond_3
    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    const/16 v8, 0x39

    if-gt v7, v8, :cond_5

    :cond_4
    add-int/lit8 v8, v6, 0x1

    .line 992
    aput-byte v7, v2, v6

    move v6, v8

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v6, 0x1

    const/16 v8, 0x25

    .line 997
    aput-byte v8, v2, v6

    and-int/lit16 v6, v7, 0xf0

    shr-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    const/16 v8, 0xa

    if-lt v6, v8, :cond_6

    add-int/lit8 v9, v5, 0x1

    add-int/lit8 v6, v6, 0x41

    sub-int/2addr v6, v8

    int-to-byte v6, v6

    .line 1000
    aput-byte v6, v2, v5

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v5, 0x1

    add-int/lit8 v6, v6, 0x30

    int-to-byte v6, v6

    .line 1002
    aput-byte v6, v2, v5

    :goto_3
    and-int/lit8 v5, v7, 0xf

    int-to-byte v5, v5

    if-lt v5, v8, :cond_7

    add-int/lit8 v6, v9, 0x1

    add-int/lit8 v5, v5, 0x41

    sub-int/2addr v5, v8

    int-to-byte v5, v5

    .line 1005
    aput-byte v5, v2, v9

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v9, 0x1

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    .line 1007
    aput-byte v5, v2, v9

    goto :goto_2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    if-eqz v5, :cond_9

    return-object p0

    .line 1016
    :cond_9
    :try_start_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v6, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 1021
    :catch_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v6}, Ljava/lang/String;-><init>([BII)V

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1032
    new-instance v0, Lorg/eclipse/jetty/util/UrlEncoded;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/UrlEncoded;-><init>(Lorg/eclipse/jetty/util/UrlEncoded;)V

    return-object v0
.end method

.method public decode(Ljava/lang/String;)V
    .locals 2

    .line 89
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {p1, p0, v0, v1}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    return-void
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 95
    invoke-static {p1, p0, p2, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 2

    .line 103
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 121
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->encode(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
