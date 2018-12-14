.class public Lorg/eclipse/jetty/http/HttpURI;
.super Ljava/lang/Object;
.source "HttpURI.java"


# static fields
.field private static final ASTERISK:I = 0xa

.field private static final AUTH:I = 0x4

.field private static final AUTH_OR_PATH:I = 0x1

.field private static final IPV6:I = 0x5

.field private static final PARAM:I = 0x8

.field private static final PATH:I = 0x7

.field private static final PORT:I = 0x6

.field private static final QUERY:I = 0x9

.field private static final SCHEME_OR_PATH:I = 0x2

.field private static final START:I

.field private static final __empty:[B


# instance fields
.field _authority:I

.field _encoded:Z

.field _end:I

.field _fragment:I

.field _host:I

.field _param:I

.field _partial:Z

.field _path:I

.field _port:I

.field _portValue:I

.field _query:I

.field _raw:[B

.field _rawString:Ljava/lang/String;

.field _scheme:I

.field final _utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    new-array v0, v0, [B

    sput-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 64
    sget-object v1, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 76
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 64
    sget-object v1, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 76
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 78
    new-instance v1, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 96
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    :try_start_0
    const-string v1, "UTF-8"

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->parse([BII)V

    return-void

    :catch_0
    move-exception p1

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 64
    sget-object v1, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 76
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 116
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpURI;->parse(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 64
    sget-object v1, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 76
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 91
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 64
    sget-object v1, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 76
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpURI;->parse2([BII)V

    return-void
.end method

.method private parse2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 207
    iput-boolean v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    move-object/from16 v4, p1

    .line 208
    iput-object v4, v0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int v4, v1, v2

    .line 213
    iput v4, v0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    .line 214
    iput v1, v0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    .line 215
    iput v1, v0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    .line 216
    iput v1, v0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 217
    iput v1, v0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    const/4 v5, -0x1

    .line 218
    iput v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    .line 219
    iput v1, v0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 220
    iget v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 221
    iget v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 222
    iget v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    const/4 v9, 0x1

    move v3, v1

    move v11, v3

    const/4 v10, 0x0

    :goto_0
    if-ge v3, v4, :cond_1e

    .line 225
    iget-object v12, v0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v12, v12, v3

    and-int/lit16 v12, v12, 0xff

    int-to-char v12, v12

    add-int/lit8 v13, v3, 0x1

    const/4 v14, 0x6

    const/16 v15, 0x3b

    const/16 v5, 0x3f

    const/16 v6, 0x23

    const/16 v7, 0x3a

    const/16 v8, 0x2f

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    .line 491
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "only \'*\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    if-ne v12, v6, :cond_1d

    .line 483
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto/16 :goto_a

    :pswitch_3
    if-eq v12, v6, :cond_1

    if-eq v12, v5, :cond_0

    goto/16 :goto_a

    .line 465
    :cond_0
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    :goto_1
    const/16 v10, 0x9

    goto/16 :goto_a

    .line 471
    :cond_1
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 472
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto/16 :goto_a

    :pswitch_4
    if-eq v12, v6, :cond_5

    const/16 v6, 0x25

    if-eq v12, v6, :cond_4

    if-eq v12, v15, :cond_3

    if-eq v12, v5, :cond_2

    goto/16 :goto_a

    .line 439
    :cond_2
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 440
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    goto :goto_1

    .line 433
    :cond_3
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    const/16 v10, 0x8

    goto/16 :goto_a

    .line 453
    :cond_4
    iput-boolean v9, v0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    goto/16 :goto_a

    .line 446
    :cond_5
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 447
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 448
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto/16 :goto_a

    :pswitch_5
    if-ne v12, v8, :cond_1d

    .line 419
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 420
    iget v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iget v6, v0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    if-gt v5, v6, :cond_6

    .line 421
    iget v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iput v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    :cond_6
    move v11, v3

    :cond_7
    :goto_2
    move v3, v13

    :goto_3
    const/4 v10, 0x7

    goto :goto_0

    :pswitch_6
    if-eq v12, v8, :cond_9

    const/16 v3, 0x5d

    if-eq v12, v3, :cond_8

    goto/16 :goto_a

    :cond_8
    const/4 v10, 0x4

    goto/16 :goto_a

    .line 402
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No closing \']\' for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    sget-object v6, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v5, v1, v2, v6}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_7
    if-eq v12, v8, :cond_d

    if-eq v12, v7, :cond_c

    const/16 v3, 0x40

    if-eq v12, v3, :cond_b

    const/16 v3, 0x5b

    if-eq v12, v3, :cond_a

    goto/16 :goto_a

    :cond_a
    const/4 v3, 0x5

    const/4 v10, 0x5

    goto/16 :goto_a

    .line 378
    :cond_b
    iput v13, v0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    goto/16 :goto_a

    .line 383
    :cond_c
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    const/4 v10, 0x6

    goto/16 :goto_a

    .line 371
    :cond_d
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 372
    iget v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iput v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    move v11, v3

    const/4 v10, 0x7

    goto/16 :goto_a

    :pswitch_8
    if-le v2, v14, :cond_10

    const/16 v14, 0x74

    if-ne v12, v14, :cond_10

    .line 292
    iget-object v14, v0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v15, v1, 0x3

    aget-byte v14, v14, v15

    if-ne v14, v7, :cond_e

    add-int/lit8 v13, v1, 0x4

    goto :goto_4

    .line 298
    :cond_e
    iget-object v14, v0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v15, v1, 0x4

    aget-byte v14, v14, v15

    if-ne v14, v7, :cond_f

    add-int/lit8 v13, v1, 0x5

    goto :goto_4

    .line 304
    :cond_f
    iget-object v14, v0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v15, v1, 0x5

    aget-byte v14, v14, v15

    if-ne v14, v7, :cond_10

    add-int/lit8 v13, v1, 0x6

    goto :goto_4

    :cond_10
    move v15, v3

    move v7, v12

    :goto_4
    if-eq v7, v6, :cond_13

    if-eq v7, v8, :cond_7

    if-eq v7, v5, :cond_12

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_a

    .line 339
    :pswitch_9
    iput v15, v0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    goto/16 :goto_8

    :pswitch_a
    add-int/lit8 v3, v13, 0x1

    .line 317
    iput v13, v0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    .line 318
    iput v13, v0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 319
    iget-object v5, v0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    if-ne v5, v8, :cond_11

    move v11, v13

    goto/16 :goto_9

    .line 324
    :cond_11
    iput v13, v0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 325
    iput v13, v0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    move v11, v13

    goto/16 :goto_3

    .line 346
    :cond_12
    iput v15, v0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 347
    iput v15, v0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    goto :goto_7

    .line 354
    :cond_13
    iput v15, v0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 355
    iput v15, v0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 356
    iput v15, v0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto/16 :goto_a

    .line 266
    :pswitch_b
    iget-boolean v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    if-nez v3, :cond_14

    iget v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v7, v0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    if-eq v3, v7, :cond_15

    :cond_14
    if-ne v12, v8, :cond_15

    .line 268
    iput v13, v0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 269
    iget v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 270
    iget v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    move v3, v13

    const/4 v10, 0x4

    goto/16 :goto_0

    :cond_15
    if-eq v12, v15, :cond_17

    if-eq v12, v5, :cond_17

    if-ne v12, v6, :cond_16

    goto :goto_5

    .line 280
    :cond_16
    iput v11, v0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 281
    iput v11, v0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    goto/16 :goto_2

    :cond_17
    :goto_5
    add-int/lit8 v3, v13, -0x1

    goto/16 :goto_3

    :pswitch_c
    if-eq v12, v6, :cond_1c

    const/16 v6, 0x2a

    if-eq v12, v6, :cond_1b

    if-eq v12, v8, :cond_1a

    if-eq v12, v15, :cond_19

    if-eq v12, v5, :cond_18

    const/4 v10, 0x2

    :goto_6
    move v11, v3

    goto :goto_a

    .line 243
    :cond_18
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 244
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    move v11, v3

    :goto_7
    move v3, v13

    const/16 v10, 0x9

    goto/16 :goto_0

    .line 239
    :cond_19
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    move v11, v3

    :goto_8
    move v3, v13

    const/16 v10, 0x8

    goto/16 :goto_0

    :cond_1a
    move v11, v3

    move v3, v13

    :goto_9
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 253
    :cond_1b
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    const/16 v10, 0xa

    goto :goto_6

    .line 248
    :cond_1c
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 249
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 250
    iput v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto :goto_6

    :cond_1d
    :goto_a
    move v3, v13

    goto/16 :goto_0

    .line 496
    :cond_1e
    iget v1, v0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iget v2, v0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    if-ge v1, v2, :cond_1f

    .line 497
    iget-object v1, v0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, v0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    add-int/2addr v2, v9

    iget v3, v0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v4, v0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v9

    const/16 v4, 0xa

    invoke-static {v1, v2, v3, v4}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v1

    iput v1, v0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    :cond_1f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private toUtf8String(II)Ljava/lang/String;
    .locals 2

    .line 502
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 503
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BII)V

    .line 504
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 752
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    .line 753
    sget-object v1, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    const-string v1, ""

    .line 754
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 755
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    return-void
.end method

.method public decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;)V
    .locals 4

    .line 732
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 735
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-static {v0, v1, v2, p1, v3}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;Lorg/eclipse/jetty/util/Utf8StringBuilder;)V

    return-void
.end method

.method public decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 741
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 744
    invoke-static {p2}, Lorg/eclipse/jetty/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 747
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p2}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    goto :goto_1

    .line 745
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v0, v1, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;)V

    :goto_1
    return-void
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 3

    .line 531
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 533
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompletePath()Ljava/lang/String;
    .locals 3

    .line 692
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 694
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecodedPath()Ljava/lang/String;
    .locals 9

    .line 557
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 560
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 563
    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    :goto_0
    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-ge v2, v3, :cond_7

    .line 565
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v3, v3, v2

    const/16 v4, 0x25

    const/4 v5, 0x1

    if-ne v3, v4, :cond_5

    if-nez v1, :cond_1

    .line 571
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 572
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int v6, v2, v6

    invoke-virtual {v1, v3, v4, v6}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BII)V

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v3, v2, 0x2

    .line 576
    iget v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-lt v3, v4, :cond_2

    .line 577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad % encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v4, v4, v6

    const/16 v7, 0x75

    const/16 v8, 0x10

    if-ne v4, v7, :cond_4

    add-int/lit8 v2, v2, 0x5

    .line 580
    iget v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-lt v2, v4, :cond_3

    .line 581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad %u encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_3
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    const/4 v7, 0x4

    invoke-static {v6, v3, v7, v8}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    .line 585
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 590
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 595
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    const/4 v4, 0x2

    invoke-static {v2, v6, v4, v8}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 596
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    move v2, v3

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 603
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    :cond_6
    :goto_1
    add-int/2addr v2, v5

    goto/16 :goto_0

    :cond_7
    if-nez v1, :cond_8

    .line 608
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 609
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecodedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 614
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 617
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v0, v1

    .line 621
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-ge v1, v5, :cond_7

    .line 623
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v5, v5, v1

    const/16 v6, 0x25

    if-ne v5, v6, :cond_5

    if-nez v2, :cond_1

    .line 629
    new-array v2, v0, [B

    .line 630
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    invoke-static {v5, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    add-int/lit8 v5, v1, 0x2

    .line 633
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-lt v5, v6, :cond_2

    .line 634
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad % encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 635
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v6, v6, v7

    const/16 v8, 0x75

    const/16 v9, 0x10

    if-ne v6, v8, :cond_4

    add-int/lit8 v1, v1, 0x5

    .line 637
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-lt v1, v6, :cond_3

    .line 638
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad %u encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 642
    :cond_3
    :try_start_0
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    const/4 v8, 0x4

    invoke-static {v7, v5, v8, v9}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    .line 643
    invoke-virtual {v6, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 644
    array-length v6, v5

    invoke-static {v5, v3, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    array-length v5, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v5

    goto :goto_2

    :catch_0
    move-exception p1

    .line 650
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 655
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    const/4 v6, 0x2

    invoke-static {v1, v7, v6, v9}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    add-int/lit8 v6, v4, 0x1

    .line 656
    aput-byte v1, v2, v4

    move v1, v5

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v4, 0x1

    .line 667
    aput-byte v5, v2, v4

    :goto_1
    move v4, v6

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    if-nez v2, :cond_8

    .line 672
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 674
    :cond_8
    invoke-static {v2, v3, v4, p1}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFragment()Ljava/lang/String;
    .locals 3

    .line 725
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 727
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    .line 538
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 540
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 3

    .line 699
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 701
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .line 550
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 552
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathAndParam()Ljava/lang/String;
    .locals 3

    .line 685
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 687
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 545
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .line 706
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 708
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 713
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 715
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScheme()Ljava/lang/String;
    .locals 6

    .line 509
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 511
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x70

    const/16 v3, 0x68

    const/16 v4, 0x74

    if-ne v0, v1, :cond_1

    .line 512
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    aget-byte v1, v1, v5

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v1, v1, v5

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v5, v5, 0x2

    aget-byte v1, v1, v5

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v5, v5, 0x3

    aget-byte v1, v1, v5

    if-ne v1, v2, :cond_1

    const-string v0, "http"

    return-object v0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 518
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    const/16 v1, 0x73

    if-ne v0, v1, :cond_2

    const-string v0, "https"

    return-object v0

    .line 526
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasQuery()Z
    .locals 2

    .line 720
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 3

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 122
    array-length v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/jetty/http/HttpURI;->parse2([BII)V

    .line 123
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    return-void
.end method

.method public parse([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpURI;->parse2([BII)V

    return-void
.end method

.method public parseConnect([BII)V
    .locals 6

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 137
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int p1, p2, p3

    .line 141
    iput p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    .line 142
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    .line 143
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    .line 144
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 145
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    .line 147
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 148
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 149
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 150
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    const/4 v0, 0x4

    move v1, p2

    const/4 v2, 0x4

    :goto_0
    if-ge v1, p1, :cond_4

    .line 154
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    add-int/lit8 v4, v1, 0x1

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v1, v4

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x2f

    if-eq v3, v1, :cond_1

    const/16 v1, 0x5d

    if-eq v3, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    goto :goto_1

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No closing \']\' for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    sget-object v2, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v1, p2, p3, v2}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    const/16 v5, 0x3a

    if-eq v3, v5, :cond_3

    const/16 v1, 0x5b

    if-eq v3, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    const/4 v2, 0x5

    goto :goto_1

    .line 165
    :cond_3
    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 197
    :cond_4
    iget p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iget p3, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    if-ge p1, p3, :cond_5

    .line 198
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget p3, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    add-int/lit8 p3, p3, 0x1

    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xa

    invoke-static {p1, p3, v0, v1}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    .line 201
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    return-void

    .line 200
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No port"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 761
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 762
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 763
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Lorg/eclipse/jetty/util/Utf8StringBuilder;)V
    .locals 4

    .line 768
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BII)V

    return-void
.end method
