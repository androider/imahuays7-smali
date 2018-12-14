.class public Lorg/eclipse/jetty/util/security/UnixCrypt;
.super Ljava/lang/Object;
.source "UnixCrypt.java"


# static fields
.field private static final A64TOI:[B

.field private static final CF6464:[[J

.field private static final CIFP:[B

.field private static final ExpandTr:[B

.field private static final IE3264:[[J

.field private static final IP:[B

.field private static final ITOA64:[B

.field private static final P32Tr:[B

.field private static final PC1:[B

.field private static final PC1ROT:[[J

.field private static final PC2:[B

.field private static final PC2ROT:[[[J

.field private static final Rotates:[B

.field private static final S:[[B

.field private static final SPE:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/16 v0, 0x40

    .line 39
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/eclipse/jetty/util/security/UnixCrypt;->IP:[B

    const/16 v1, 0x30

    .line 44
    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lorg/eclipse/jetty/util/security/UnixCrypt;->ExpandTr:[B

    const/16 v2, 0x38

    .line 48
    new-array v2, v2, [B

    fill-array-data v2, :array_2

    sput-object v2, Lorg/eclipse/jetty/util/security/UnixCrypt;->PC1:[B

    const/16 v2, 0x10

    .line 53
    new-array v3, v2, [B

    fill-array-data v3, :array_3

    sput-object v3, Lorg/eclipse/jetty/util/security/UnixCrypt;->Rotates:[B

    .line 56
    new-array v3, v0, [B

    fill-array-data v3, :array_4

    sput-object v3, Lorg/eclipse/jetty/util/security/UnixCrypt;->PC2:[B

    const/16 v3, 0x8

    .line 61
    new-array v4, v3, [[B

    new-array v5, v0, [B

    fill-array-data v5, :array_5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v0, [B

    fill-array-data v5, :array_6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v5, v0, [B

    fill-array-data v5, :array_7

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-array v5, v0, [B

    fill-array-data v5, :array_8

    const/4 v9, 0x3

    aput-object v5, v4, v9

    new-array v5, v0, [B

    fill-array-data v5, :array_9

    const/4 v10, 0x4

    aput-object v5, v4, v10

    new-array v5, v0, [B

    fill-array-data v5, :array_a

    const/4 v11, 0x5

    aput-object v5, v4, v11

    new-array v5, v0, [B

    fill-array-data v5, :array_b

    const/4 v12, 0x6

    aput-object v5, v4, v12

    new-array v5, v0, [B

    fill-array-data v5, :array_c

    const/4 v12, 0x7

    aput-object v5, v4, v12

    sput-object v4, Lorg/eclipse/jetty/util/security/UnixCrypt;->S:[[B

    const/16 v4, 0x20

    .line 87
    new-array v5, v4, [B

    fill-array-data v5, :array_d

    sput-object v5, Lorg/eclipse/jetty/util/security/UnixCrypt;->P32Tr:[B

    .line 90
    new-array v5, v0, [B

    fill-array-data v5, :array_e

    sput-object v5, Lorg/eclipse/jetty/util/security/UnixCrypt;->CIFP:[B

    .line 98
    new-array v5, v0, [B

    fill-array-data v5, :array_f

    sput-object v5, Lorg/eclipse/jetty/util/security/UnixCrypt;->ITOA64:[B

    const/16 v5, 0x80

    .line 108
    new-array v5, v5, [B

    sput-object v5, Lorg/eclipse/jetty/util/security/UnixCrypt;->A64TOI:[B

    .line 111
    filled-new-array {v2, v2}, [I

    move-result-object v5

    const-class v13, J

    invoke-static {v13, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    sput-object v5, Lorg/eclipse/jetty/util/security/UnixCrypt;->PC1ROT:[[J

    .line 114
    filled-new-array {v8, v2, v2}, [I

    move-result-object v5

    const-class v13, J

    invoke-static {v13, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[J

    sput-object v5, Lorg/eclipse/jetty/util/security/UnixCrypt;->PC2ROT:[[[J

    .line 117
    filled-new-array {v3, v2}, [I

    move-result-object v5

    const-class v13, J

    invoke-static {v13, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    sput-object v5, Lorg/eclipse/jetty/util/security/UnixCrypt;->IE3264:[[J

    .line 120
    filled-new-array {v3, v0}, [I

    move-result-object v5

    const-class v13, J

    invoke-static {v13, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    sput-object v5, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    .line 123
    filled-new-array {v2, v2}, [I

    move-result-object v2

    const-class v5, J

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    sput-object v2, Lorg/eclipse/jetty/util/security/UnixCrypt;->CF6464:[[J

    .line 129
    new-array v2, v0, [B

    .line 130
    new-array v5, v0, [B

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v0, :cond_0

    .line 134
    sget-object v14, Lorg/eclipse/jetty/util/security/UnixCrypt;->A64TOI:[B

    sget-object v15, Lorg/eclipse/jetty/util/security/UnixCrypt;->ITOA64:[B

    aget-byte v15, v15, v13

    int-to-byte v10, v13

    aput-byte v10, v14, v15

    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x4

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v0, :cond_1

    .line 138
    aput-byte v6, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v0, :cond_5

    .line 143
    sget-object v13, Lorg/eclipse/jetty/util/security/UnixCrypt;->PC2:[B

    aget-byte v13, v13, v10

    if-nez v13, :cond_2

    goto :goto_3

    .line 144
    :cond_2
    sget-object v14, Lorg/eclipse/jetty/util/security/UnixCrypt;->Rotates:[B

    aget-byte v14, v14, v6

    sub-int/2addr v14, v7

    add-int/2addr v13, v14

    .line 145
    rem-int/lit8 v14, v13, 0x1c

    sget-object v15, Lorg/eclipse/jetty/util/security/UnixCrypt;->Rotates:[B

    aget-byte v15, v15, v6

    if-ge v14, v15, :cond_3

    add-int/lit8 v13, v13, -0x1c

    .line 146
    :cond_3
    sget-object v14, Lorg/eclipse/jetty/util/security/UnixCrypt;->PC1:[B

    aget-byte v13, v14, v13

    if-lez v13, :cond_4

    add-int/lit8 v13, v13, -0x1

    or-int/lit8 v14, v13, 0x7

    and-int/2addr v13, v12

    sub-int/2addr v14, v13

    add-int/lit8 v13, v14, 0x1

    :cond_4
    int-to-byte v13, v13

    .line 153
    aput-byte v13, v2, v10

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 155
    :cond_5
    sget-object v10, Lorg/eclipse/jetty/util/security/UnixCrypt;->PC1ROT:[[J

    invoke-static {v10, v2, v3}, Lorg/eclipse/jetty/util/security/UnixCrypt;->init_perm([[J[BI)V

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v8, :cond_c

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v0, :cond_6

    .line 162
    aput-byte v6, v5, v13

    aput-byte v6, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v0, :cond_8

    .line 165
    sget-object v14, Lorg/eclipse/jetty/util/security/UnixCrypt;->PC2:[B

    aget-byte v14, v14, v13

    if-nez v14, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v15, v13, 0x1

    int-to-byte v15, v15

    .line 166
    aput-byte v15, v5, v14

    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_8
    if-ge v13, v0, :cond_b

    .line 170
    sget-object v14, Lorg/eclipse/jetty/util/security/UnixCrypt;->PC2:[B

    aget-byte v14, v14, v13

    if-nez v14, :cond_9

    goto :goto_9

    :cond_9
    add-int/2addr v14, v10

    .line 172
    rem-int/lit8 v15, v14, 0x1c

    if-gt v15, v10, :cond_a

    add-int/lit8 v14, v14, -0x1c

    .line 173
    :cond_a
    aget-byte v14, v5, v14

    aput-byte v14, v2, v13

    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 176
    :cond_b
    sget-object v13, Lorg/eclipse/jetty/util/security/UnixCrypt;->PC2ROT:[[[J

    aget-object v13, v13, v10

    invoke-static {v13, v2, v3}, Lorg/eclipse/jetty/util/security/UnixCrypt;->init_perm([[J[BI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_c
    const/4 v10, 0x0

    :goto_a
    if-ge v10, v3, :cond_12

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v3, :cond_11

    if-ge v13, v8, :cond_d

    const/4 v14, 0x0

    goto :goto_c

    .line 184
    :cond_d
    sget-object v14, Lorg/eclipse/jetty/util/security/UnixCrypt;->IP:[B

    sget-object v15, Lorg/eclipse/jetty/util/security/UnixCrypt;->ExpandTr:[B

    mul-int/lit8 v17, v10, 0x6

    add-int v17, v17, v13

    add-int/lit8 v17, v17, -0x2

    aget-byte v15, v15, v17

    sub-int/2addr v15, v7

    aget-byte v14, v14, v15

    :goto_c
    if-le v14, v4, :cond_e

    add-int/lit8 v14, v14, -0x20

    goto :goto_d

    :cond_e
    if-lez v14, :cond_f

    add-int/lit8 v14, v14, -0x1

    :cond_f
    :goto_d
    if-lez v14, :cond_10

    add-int/lit8 v14, v14, -0x1

    or-int/lit8 v15, v14, 0x7

    and-int/2addr v14, v12

    sub-int/2addr v15, v14

    add-int/lit8 v14, v15, 0x1

    :cond_10
    mul-int/lit8 v15, v10, 0x8

    add-int/2addr v15, v13

    int-to-byte v14, v14

    .line 194
    aput-byte v14, v2, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 198
    :cond_12
    sget-object v10, Lorg/eclipse/jetty/util/security/UnixCrypt;->IE3264:[[J

    invoke-static {v10, v2, v3}, Lorg/eclipse/jetty/util/security/UnixCrypt;->init_perm([[J[BI)V

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v0, :cond_14

    .line 203
    sget-object v13, Lorg/eclipse/jetty/util/security/UnixCrypt;->IP:[B

    sget-object v14, Lorg/eclipse/jetty/util/security/UnixCrypt;->CIFP:[B

    aget-byte v14, v14, v10

    sub-int/2addr v14, v7

    aget-byte v13, v13, v14

    if-lez v13, :cond_13

    add-int/lit8 v13, v13, -0x1

    or-int/lit8 v14, v13, 0x7

    and-int/2addr v13, v12

    sub-int/2addr v14, v13

    add-int/lit8 v13, v14, 0x1

    :cond_13
    sub-int/2addr v13, v7

    add-int/lit8 v10, v10, 0x1

    int-to-byte v14, v10

    .line 210
    aput-byte v14, v2, v13

    goto :goto_e

    .line 213
    :cond_14
    sget-object v10, Lorg/eclipse/jetty/util/security/UnixCrypt;->CF6464:[[J

    invoke-static {v10, v2, v3}, Lorg/eclipse/jetty/util/security/UnixCrypt;->init_perm([[J[BI)V

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v1, :cond_15

    .line 217
    sget-object v12, Lorg/eclipse/jetty/util/security/UnixCrypt;->P32Tr:[B

    sget-object v13, Lorg/eclipse/jetty/util/security/UnixCrypt;->ExpandTr:[B

    aget-byte v13, v13, v10

    sub-int/2addr v13, v7

    aget-byte v12, v12, v13

    aput-byte v12, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_15
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_1a

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v0, :cond_19

    shr-int/lit8 v12, v10, 0x0

    and-int/2addr v12, v7

    shl-int/2addr v12, v11

    shr-int/lit8 v13, v10, 0x1

    and-int/2addr v13, v7

    shl-int/2addr v13, v9

    or-int/2addr v12, v13

    shr-int/lit8 v13, v10, 0x2

    and-int/2addr v13, v7

    shl-int/2addr v13, v8

    or-int/2addr v12, v13

    shr-int/lit8 v13, v10, 0x3

    and-int/2addr v13, v7

    shl-int/2addr v13, v7

    or-int/2addr v12, v13

    shr-int/lit8 v13, v10, 0x4

    and-int/2addr v13, v7

    shl-int/2addr v13, v6

    or-int/2addr v12, v13

    shr-int/lit8 v13, v10, 0x5

    and-int/2addr v13, v7

    const/4 v14, 0x4

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    .line 227
    sget-object v13, Lorg/eclipse/jetty/util/security/UnixCrypt;->S:[[B

    aget-object v13, v13, v1

    aget-byte v12, v13, v12

    shr-int/lit8 v13, v12, 0x3

    and-int/2addr v13, v7

    shl-int/2addr v13, v6

    shr-int/lit8 v14, v12, 0x2

    and-int/2addr v14, v7

    shl-int/2addr v14, v7

    or-int/2addr v13, v14

    shr-int/lit8 v14, v12, 0x1

    and-int/2addr v14, v7

    shl-int/2addr v14, v8

    or-int/2addr v13, v14

    shr-int/2addr v12, v6

    and-int/2addr v12, v7

    shl-int/2addr v12, v9

    or-int/2addr v12, v13

    const/4 v13, 0x0

    :goto_12
    if-ge v13, v4, :cond_16

    .line 230
    aput-byte v6, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :cond_16
    const/4 v13, 0x0

    const/4 v14, 0x4

    :goto_13
    if-ge v13, v14, :cond_17

    mul-int/lit8 v15, v1, 0x4

    add-int/2addr v15, v13

    shr-int v16, v12, v13

    and-int/lit8 v0, v16, 0x1

    int-to-byte v0, v0

    .line 232
    aput-byte v0, v5, v15

    add-int/lit8 v13, v13, 0x1

    const/16 v0, 0x40

    goto :goto_13

    :cond_17
    const-wide/16 v12, 0x0

    const/16 v0, 0x18

    :goto_14
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_18

    shl-long/2addr v12, v7

    .line 235
    aget-byte v15, v2, v0

    sub-int/2addr v15, v7

    aget-byte v15, v5, v15

    int-to-long v8, v15

    shl-long/2addr v8, v4

    or-long v15, v12, v8

    add-int/lit8 v8, v0, 0x18

    aget-byte v8, v2, v8

    sub-int/2addr v8, v7

    aget-byte v8, v5, v8

    int-to-long v8, v8

    or-long v12, v15, v8

    const/4 v8, 0x2

    const/4 v9, 0x3

    goto :goto_14

    .line 237
    :cond_18
    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    aget-object v0, v0, v1

    invoke-static {v12, v13}, Lorg/eclipse/jetty/util/security/UnixCrypt;->to_six_bit(J)J

    move-result-wide v8

    aput-wide v8, v0, v10

    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x40

    const/4 v8, 0x2

    const/4 v9, 0x3

    goto/16 :goto_11

    :cond_19
    const/4 v14, 0x4

    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x40

    const/4 v8, 0x2

    const/4 v9, 0x3

    goto/16 :goto_10

    :cond_1a
    return-void

    :array_0
    .array-data 1
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x40t
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x1bt
        0x13t
        0xbt
        0x3t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ft
        0x37t
        0x2ft
        0x27t
        0x1ft
        0x17t
        0xft
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x1bt
        0x13t
        0xbt
        0x3t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x3ft
        0x37t
        0x2ft
        0x27t
        0x1ft
        0x17t
        0xft
        0x7t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x1ct
        0x14t
        0xct
        0x4t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x9t
        0x12t
        0xet
        0x11t
        0xbt
        0x18t
        0x1t
        0x5t
        0x16t
        0x19t
        0x3t
        0x1ct
        0xft
        0x6t
        0x15t
        0xat
        0x23t
        0x26t
        0x17t
        0x13t
        0xct
        0x4t
        0x1at
        0x8t
        0x2bt
        0x36t
        0x10t
        0x7t
        0x1bt
        0x14t
        0xdt
        0x2t
        0x0t
        0x0t
        0x29t
        0x34t
        0x1ft
        0x25t
        0x2ft
        0x37t
        0x0t
        0x0t
        0x1et
        0x28t
        0x33t
        0x2dt
        0x21t
        0x30t
        0x0t
        0x0t
        0x2ct
        0x31t
        0x27t
        0x38t
        0x22t
        0x35t
        0x0t
        0x0t
        0x2et
        0x2at
        0x32t
        0x24t
        0x1dt
        0x20t
    .end array-data

    :array_5
    .array-data 1
        0xet
        0x4t
        0xdt
        0x1t
        0x2t
        0xft
        0xbt
        0x8t
        0x3t
        0xat
        0x6t
        0xct
        0x5t
        0x9t
        0x0t
        0x7t
        0x0t
        0xft
        0x7t
        0x4t
        0xet
        0x2t
        0xdt
        0x1t
        0xat
        0x6t
        0xct
        0xbt
        0x9t
        0x5t
        0x3t
        0x8t
        0x4t
        0x1t
        0xet
        0x8t
        0xdt
        0x6t
        0x2t
        0xbt
        0xft
        0xct
        0x9t
        0x7t
        0x3t
        0xat
        0x5t
        0x0t
        0xft
        0xct
        0x8t
        0x2t
        0x4t
        0x9t
        0x1t
        0x7t
        0x5t
        0xbt
        0x3t
        0xet
        0xat
        0x0t
        0x6t
        0xdt
    .end array-data

    :array_6
    .array-data 1
        0xft
        0x1t
        0x8t
        0xet
        0x6t
        0xbt
        0x3t
        0x4t
        0x9t
        0x7t
        0x2t
        0xdt
        0xct
        0x0t
        0x5t
        0xat
        0x3t
        0xdt
        0x4t
        0x7t
        0xft
        0x2t
        0x8t
        0xet
        0xct
        0x0t
        0x1t
        0xat
        0x6t
        0x9t
        0xbt
        0x5t
        0x0t
        0xet
        0x7t
        0xbt
        0xat
        0x4t
        0xdt
        0x1t
        0x5t
        0x8t
        0xct
        0x6t
        0x9t
        0x3t
        0x2t
        0xft
        0xdt
        0x8t
        0xat
        0x1t
        0x3t
        0xft
        0x4t
        0x2t
        0xbt
        0x6t
        0x7t
        0xct
        0x0t
        0x5t
        0xet
        0x9t
    .end array-data

    :array_7
    .array-data 1
        0xat
        0x0t
        0x9t
        0xet
        0x6t
        0x3t
        0xft
        0x5t
        0x1t
        0xdt
        0xct
        0x7t
        0xbt
        0x4t
        0x2t
        0x8t
        0xdt
        0x7t
        0x0t
        0x9t
        0x3t
        0x4t
        0x6t
        0xat
        0x2t
        0x8t
        0x5t
        0xet
        0xct
        0xbt
        0xft
        0x1t
        0xdt
        0x6t
        0x4t
        0x9t
        0x8t
        0xft
        0x3t
        0x0t
        0xbt
        0x1t
        0x2t
        0xct
        0x5t
        0xat
        0xet
        0x7t
        0x1t
        0xat
        0xdt
        0x0t
        0x6t
        0x9t
        0x8t
        0x7t
        0x4t
        0xft
        0xet
        0x3t
        0xbt
        0x5t
        0x2t
        0xct
    .end array-data

    :array_8
    .array-data 1
        0x7t
        0xdt
        0xet
        0x3t
        0x0t
        0x6t
        0x9t
        0xat
        0x1t
        0x2t
        0x8t
        0x5t
        0xbt
        0xct
        0x4t
        0xft
        0xdt
        0x8t
        0xbt
        0x5t
        0x6t
        0xft
        0x0t
        0x3t
        0x4t
        0x7t
        0x2t
        0xct
        0x1t
        0xat
        0xet
        0x9t
        0xat
        0x6t
        0x9t
        0x0t
        0xct
        0xbt
        0x7t
        0xdt
        0xft
        0x1t
        0x3t
        0xet
        0x5t
        0x2t
        0x8t
        0x4t
        0x3t
        0xft
        0x0t
        0x6t
        0xat
        0x1t
        0xdt
        0x8t
        0x9t
        0x4t
        0x5t
        0xbt
        0xct
        0x7t
        0x2t
        0xet
    .end array-data

    :array_9
    .array-data 1
        0x2t
        0xct
        0x4t
        0x1t
        0x7t
        0xat
        0xbt
        0x6t
        0x8t
        0x5t
        0x3t
        0xft
        0xdt
        0x0t
        0xet
        0x9t
        0xet
        0xbt
        0x2t
        0xct
        0x4t
        0x7t
        0xdt
        0x1t
        0x5t
        0x0t
        0xft
        0xat
        0x3t
        0x9t
        0x8t
        0x6t
        0x4t
        0x2t
        0x1t
        0xbt
        0xat
        0xdt
        0x7t
        0x8t
        0xft
        0x9t
        0xct
        0x5t
        0x6t
        0x3t
        0x0t
        0xet
        0xbt
        0x8t
        0xct
        0x7t
        0x1t
        0xet
        0x2t
        0xdt
        0x6t
        0xft
        0x0t
        0x9t
        0xat
        0x4t
        0x5t
        0x3t
    .end array-data

    :array_a
    .array-data 1
        0xct
        0x1t
        0xat
        0xft
        0x9t
        0x2t
        0x6t
        0x8t
        0x0t
        0xdt
        0x3t
        0x4t
        0xet
        0x7t
        0x5t
        0xbt
        0xat
        0xft
        0x4t
        0x2t
        0x7t
        0xct
        0x9t
        0x5t
        0x6t
        0x1t
        0xdt
        0xet
        0x0t
        0xbt
        0x3t
        0x8t
        0x9t
        0xet
        0xft
        0x5t
        0x2t
        0x8t
        0xct
        0x3t
        0x7t
        0x0t
        0x4t
        0xat
        0x1t
        0xdt
        0xbt
        0x6t
        0x4t
        0x3t
        0x2t
        0xct
        0x9t
        0x5t
        0xft
        0xat
        0xbt
        0xet
        0x1t
        0x7t
        0x6t
        0x0t
        0x8t
        0xdt
    .end array-data

    :array_b
    .array-data 1
        0x4t
        0xbt
        0x2t
        0xet
        0xft
        0x0t
        0x8t
        0xdt
        0x3t
        0xct
        0x9t
        0x7t
        0x5t
        0xat
        0x6t
        0x1t
        0xdt
        0x0t
        0xbt
        0x7t
        0x4t
        0x9t
        0x1t
        0xat
        0xet
        0x3t
        0x5t
        0xct
        0x2t
        0xft
        0x8t
        0x6t
        0x1t
        0x4t
        0xbt
        0xdt
        0xct
        0x3t
        0x7t
        0xet
        0xat
        0xft
        0x6t
        0x8t
        0x0t
        0x5t
        0x9t
        0x2t
        0x6t
        0xbt
        0xdt
        0x8t
        0x1t
        0x4t
        0xat
        0x7t
        0x9t
        0x5t
        0x0t
        0xft
        0xet
        0x2t
        0x3t
        0xct
    .end array-data

    :array_c
    .array-data 1
        0xdt
        0x2t
        0x8t
        0x4t
        0x6t
        0xft
        0xbt
        0x1t
        0xat
        0x9t
        0x3t
        0xet
        0x5t
        0x0t
        0xct
        0x7t
        0x1t
        0xft
        0xdt
        0x8t
        0xat
        0x3t
        0x7t
        0x4t
        0xct
        0x5t
        0x6t
        0xbt
        0x0t
        0xet
        0x9t
        0x2t
        0x7t
        0xbt
        0x4t
        0x1t
        0x9t
        0xct
        0xet
        0x2t
        0x0t
        0x6t
        0xat
        0xdt
        0xft
        0x3t
        0x5t
        0x8t
        0x2t
        0x1t
        0xet
        0x7t
        0x4t
        0xat
        0x8t
        0xdt
        0xft
        0xct
        0x9t
        0x0t
        0x3t
        0x5t
        0x6t
        0xbt
    .end array-data

    :array_d
    .array-data 1
        0x10t
        0x7t
        0x14t
        0x15t
        0x1dt
        0xct
        0x1ct
        0x11t
        0x1t
        0xft
        0x17t
        0x1at
        0x5t
        0x12t
        0x1ft
        0xat
        0x2t
        0x8t
        0x18t
        0xet
        0x20t
        0x1bt
        0x3t
        0x9t
        0x13t
        0xdt
        0x1et
        0x6t
        0x16t
        0xbt
        0x4t
        0x19t
    .end array-data

    :array_e
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x11t
        0x12t
        0x13t
        0x14t
        0x5t
        0x6t
        0x7t
        0x8t
        0x15t
        0x16t
        0x17t
        0x18t
        0x9t
        0xat
        0xbt
        0xct
        0x19t
        0x1at
        0x1bt
        0x1ct
        0xdt
        0xet
        0xft
        0x10t
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x31t
        0x32t
        0x33t
        0x34t
        0x25t
        0x26t
        0x27t
        0x28t
        0x35t
        0x36t
        0x37t
        0x38t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x3dt
        0x3et
        0x3ft
        0x40t
    .end array-data

    :array_f
    .array-data 1
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/16 v0, 0xd

    .line 414
    new-array v1, v0, [B

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 420
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    const/4 v6, 0x0

    :goto_0
    const/16 v9, 0x8

    const/4 v10, 0x2

    if-ge v6, v9, :cond_2

    shl-long/2addr v7, v9

    if-ge v6, v2, :cond_1

    .line 424
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    int-to-long v9, v9

    or-long v11, v7, v9

    add-int/lit8 v6, v6, 0x1

    move-wide v7, v11

    goto :goto_0

    .line 427
    :cond_2
    invoke-static {v7, v8}, Lorg/eclipse/jetty/util/security/UnixCrypt;->des_setkey(J)[J

    move-result-object p0

    const/4 v2, 0x2

    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_3

    :cond_3
    const/16 v7, 0x2e

    :goto_3
    int-to-byte v8, v7

    .line 433
    aput-byte v8, v1, v2

    shl-int/lit8 v6, v6, 0x6

    .line 434
    sget-object v8, Lorg/eclipse/jetty/util/security/UnixCrypt;->A64TOI:[B

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    goto :goto_2

    :cond_4
    const/16 p1, 0x19

    .line 437
    invoke-static {v3, v4, v6, p1, p0}, Lorg/eclipse/jetty/util/security/UnixCrypt;->des_cipher(JII[J)J

    move-result-wide p0

    .line 439
    sget-object v2, Lorg/eclipse/jetty/util/security/UnixCrypt;->ITOA64:[B

    long-to-int v3, p0

    shl-int/2addr v3, v10

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    const/16 v3, 0xc

    aput-byte v2, v1, v3

    const/4 v2, 0x4

    shr-long/2addr p0, v2

    :goto_4
    add-int/lit8 v3, v3, -0x1

    if-lt v3, v10, :cond_5

    .line 443
    sget-object v2, Lorg/eclipse/jetty/util/security/UnixCrypt;->ITOA64:[B

    long-to-int v4, p0

    and-int/lit8 v4, v4, 0x3f

    aget-byte v2, v2, v4

    aput-byte v2, v1, v3

    const/4 v2, 0x6

    shr-long/2addr p0, v2

    goto :goto_4

    .line 447
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v5, v0}, Ljava/lang/String;-><init>([BII)V

    return-object p0

    :cond_6
    :goto_5
    const-string p0, "*"

    return-object p0
.end method

.method private static des_cipher(JII[J)J
    .locals 34

    .line 330
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/util/security/UnixCrypt;->to_six_bit(I)I

    move-result v3

    const-wide v4, 0x5555555555555555L    # 1.1945305291614955E103

    and-long v6, p0, v4

    const-wide v4, -0x5555555600000000L    # -3.720660661677042E-103

    and-long v8, p0, v4

    const/4 v4, 0x1

    shr-long v0, p0, v4

    const-wide/32 v10, 0x55555555

    and-long v12, v0, v10

    or-long v0, v8, v12

    shl-long v8, v6, v4

    const/16 v5, 0x20

    shl-long/2addr v6, v5

    or-long v10, v8, v6

    const-wide v6, -0x100000000L

    and-long v8, v10, v6

    shr-long v6, v0, v5

    or-long v10, v0, v6

    const-wide v0, 0xffffffffL

    and-long v6, v10, v0

    or-long v10, v8, v6

    shr-long v6, v10, v5

    long-to-int v6, v6

    .line 337
    sget-object v7, Lorg/eclipse/jetty/util/security/UnixCrypt;->IE3264:[[J

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/security/UnixCrypt;->perm3264(I[[J)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    and-long v10, v6, v8

    long-to-int v10, v10

    .line 338
    sget-object v11, Lorg/eclipse/jetty/util/security/UnixCrypt;->IE3264:[[J

    invoke-static {v10, v11}, Lorg/eclipse/jetty/util/security/UnixCrypt;->perm3264(I[[J)J

    move-result-wide v10

    move-wide v12, v10

    move-wide v10, v6

    move/from16 v6, p3

    :goto_0
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_1

    const/4 v7, 0x0

    move-wide v14, v10

    const/4 v10, 0x0

    :goto_1
    const/16 v11, 0x8

    if-ge v10, v11, :cond_0

    shl-int/lit8 v11, v10, 0x1

    .line 348
    aget-wide v16, p4, v11

    shr-long v18, v12, v5

    xor-long v20, v18, v12

    int-to-long v8, v3

    and-long v18, v20, v8

    and-long v20, v18, v0

    shl-long v18, v20, v5

    or-long v22, v20, v18

    xor-long v18, v22, v12

    xor-long v20, v18, v16

    .line 353
    sget-object v16, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    aget-object v16, v16, v7

    const/16 v17, 0x3a

    shr-long v18, v20, v17

    const-wide/16 v22, 0x3f

    and-long v0, v18, v22

    long-to-int v0, v0

    aget-wide v0, v16, v0

    sget-object v16, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    aget-object v16, v16, v4

    const/16 v18, 0x32

    shr-long v26, v20, v18

    move-wide/from16 v28, v8

    and-long v7, v26, v22

    long-to-int v7, v7

    aget-wide v7, v16, v7

    xor-long v26, v0, v7

    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v7, 0x2a

    shr-long v8, v20, v7

    move/from16 v30, v6

    and-long v5, v8, v22

    long-to-int v5, v5

    aget-wide v5, v0, v5

    xor-long v8, v26, v5

    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v5, 0x3

    aget-object v0, v0, v5

    const/16 v6, 0x22

    shr-long v26, v20, v6

    and-long v5, v26, v22

    long-to-int v5, v5

    aget-wide v5, v0, v5

    xor-long v26, v8, v5

    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v5, 0x4

    aget-object v0, v0, v5

    const/16 v6, 0x1a

    shr-long v8, v20, v6

    and-long v5, v8, v22

    long-to-int v5, v5

    aget-wide v5, v0, v5

    xor-long v8, v26, v5

    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v5, 0x5

    aget-object v0, v0, v5

    const/16 v6, 0x12

    shr-long v26, v20, v6

    and-long v5, v26, v22

    long-to-int v5, v5

    aget-wide v5, v0, v5

    xor-long v26, v8, v5

    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v5, 0x6

    aget-object v0, v0, v5

    const/16 v5, 0xa

    shr-long v5, v20, v5

    and-long v8, v5, v22

    long-to-int v5, v8

    aget-wide v5, v0, v5

    xor-long v8, v26, v5

    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v5, 0x7

    aget-object v0, v0, v5

    shr-long v5, v20, v1

    and-long v1, v5, v22

    long-to-int v1, v1

    aget-wide v1, v0, v1

    xor-long v5, v8, v1

    xor-long v0, v14, v5

    add-int/2addr v11, v4

    .line 360
    aget-wide v5, p4, v11

    const/16 v8, 0x20

    shr-long v14, v0, v8

    xor-long v19, v14, v0

    and-long v14, v19, v28

    const-wide v19, 0xffffffffL

    and-long v24, v14, v19

    shl-long v14, v24, v8

    or-long v8, v24, v14

    xor-long v14, v8, v0

    xor-long v8, v14, v5

    .line 365
    sget-object v5, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v6, 0x0

    aget-object v5, v5, v6

    shr-long v14, v8, v17

    and-long v6, v14, v22

    long-to-int v6, v6

    aget-wide v6, v5, v6

    sget-object v5, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    aget-object v5, v5, v4

    shr-long v14, v8, v18

    move-wide/from16 v31, v0

    and-long v0, v14, v22

    long-to-int v0, v0

    aget-wide v0, v5, v0

    xor-long v14, v6, v0

    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0x2a

    shr-long v5, v8, v1

    and-long v1, v5, v22

    long-to-int v1, v1

    aget-wide v1, v0, v1

    xor-long v5, v14, v1

    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x22

    shr-long v1, v8, v1

    and-long v14, v1, v22

    long-to-int v1, v14

    aget-wide v1, v0, v1

    xor-long v14, v5, v1

    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/16 v1, 0x1a

    shr-long v1, v8, v1

    and-long v5, v1, v22

    long-to-int v1, v5

    aget-wide v1, v0, v1

    xor-long v5, v14, v1

    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/16 v1, 0x12

    shr-long v1, v8, v1

    and-long v14, v1, v22

    long-to-int v1, v14

    aget-wide v1, v0, v1

    xor-long v14, v5, v1

    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/16 v1, 0xa

    shr-long v1, v8, v1

    and-long v5, v1, v22

    long-to-int v1, v5

    aget-wide v1, v0, v1

    xor-long v5, v14, v1

    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->SPE:[[J

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/4 v1, 0x2

    shr-long v1, v8, v1

    and-long v7, v1, v22

    long-to-int v1, v7

    aget-wide v1, v0, v1

    xor-long v7, v5, v1

    xor-long v0, v12, v7

    add-int/lit8 v10, v10, 0x1

    move-wide v12, v0

    move-wide/from16 v0, v19

    move/from16 v6, v30

    move-wide/from16 v14, v31

    const/16 v5, 0x20

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    goto/16 :goto_1

    :cond_0
    move-wide/from16 v19, v0

    move/from16 v30, v6

    xor-long v0, v14, v12

    xor-long v5, v12, v0

    xor-long v10, v0, v5

    move-wide v12, v5

    move-wide/from16 v0, v19

    move/from16 v6, v30

    const/16 v5, 0x20

    const-wide/16 v8, -0x1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x23

    shr-long v0, v10, v0

    const-wide/32 v2, 0xf0f0f0f

    and-long v5, v0, v2

    const-wide/16 v0, -0x1

    and-long v2, v10, v0

    shl-long/2addr v2, v4

    const-wide v7, 0xf0f0f0f0L

    and-long v9, v2, v7

    or-long v2, v5, v9

    const/16 v5, 0x20

    shl-long/2addr v2, v5

    const/16 v5, 0x23

    shr-long v5, v12, v5

    const-wide/32 v7, 0xf0f0f0f

    and-long v9, v5, v7

    and-long v5, v12, v0

    shl-long v0, v5, v4

    const-wide v4, 0xf0f0f0f0L

    and-long v6, v0, v4

    or-long v0, v9, v6

    or-long v4, v2, v0

    .line 379
    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->CF6464:[[J

    invoke-static {v4, v5, v0}, Lorg/eclipse/jetty/util/security/UnixCrypt;->perm6464(J[[J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static des_setkey(J)[J
    .locals 9

    .line 310
    sget-object v0, Lorg/eclipse/jetty/util/security/UnixCrypt;->PC1ROT:[[J

    invoke-static {p0, p1, v0}, Lorg/eclipse/jetty/util/security/UnixCrypt;->perm6464(J[[J)J

    move-result-wide p0

    const/16 v0, 0x10

    .line 311
    new-array v1, v0, [J

    const-wide v2, -0x303030300000001L    # -1.157117777211213E294

    and-long v4, p0, v2

    const/4 v6, 0x0

    aput-wide v4, v1, v6

    const/4 v4, 0x1

    move-wide v5, p0

    const/4 p0, 0x1

    :goto_0
    if-ge p0, v0, :cond_0

    .line 316
    aput-wide v5, v1, p0

    .line 317
    sget-object p1, Lorg/eclipse/jetty/util/security/UnixCrypt;->PC2ROT:[[[J

    sget-object v7, Lorg/eclipse/jetty/util/security/UnixCrypt;->Rotates:[B

    aget-byte v7, v7, p0

    sub-int/2addr v7, v4

    aget-object p1, p1, v7

    invoke-static {v5, v6, p1}, Lorg/eclipse/jetty/util/security/UnixCrypt;->perm6464(J[[J)J

    move-result-wide v5

    and-long v7, v5, v2

    .line 319
    aput-wide v7, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static init_perm([[J[BI)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    mul-int/lit8 v2, p2, 0x8

    if-ge v1, v2, :cond_3

    .line 392
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gez v2, :cond_0

    goto :goto_2

    :cond_0
    shr-int/lit8 v4, v2, 0x2

    and-int/lit8 v2, v2, 0x3

    shl-int v2, v3, v2

    const/4 v3, 0x0

    :goto_1
    const/16 v5, 0x10

    if-ge v3, v5, :cond_2

    and-int/lit8 v5, v1, 0x7

    shr-int/lit8 v6, v1, 0x3

    rsub-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    and-int v6, v3, v2

    if-eqz v6, :cond_1

    .line 399
    aget-object v6, p0, v4

    aget-wide v7, v6, v3

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v5

    or-long v11, v7, v9

    aput-wide v11, v6, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 452
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 454
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Usage - java org.eclipse.util.UnixCrypt <key> <salt>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 455
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 458
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crypt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    aget-object p0, p0, v1

    invoke-static {v3, p0}, Lorg/eclipse/jetty/util/security/UnixCrypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static perm3264(I[[J)J
    .locals 11

    const/4 v0, 0x4

    const-wide/16 v1, 0x0

    move-wide v2, v1

    move v1, p0

    const/4 p0, 0x4

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    and-int/lit16 v4, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v5, p0, 0x1

    .line 297
    aget-object v6, p1, v5

    and-int/lit8 v7, v4, 0xf

    aget-wide v7, v6, v7

    or-long v9, v2, v7

    add-int/lit8 v5, v5, 0x1

    .line 299
    aget-object v2, p1, v5

    shr-int/lit8 v3, v4, 0x4

    aget-wide v3, v2, v3

    or-long v5, v9, v3

    move-wide v2, v5

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static perm6464(J[[J)J
    .locals 11

    const/16 v0, 0x8

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v1, p0

    const/16 p0, 0x8

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    const-wide/16 v5, 0xff

    and-long v7, v1, v5

    long-to-int p1, v7

    shr-long/2addr v1, v0

    shl-int/lit8 v5, p0, 0x1

    .line 278
    aget-object v6, p2, v5

    and-int/lit8 v7, p1, 0xf

    aget-wide v7, v6, v7

    or-long v9, v3, v7

    add-int/lit8 v5, v5, 0x1

    .line 280
    aget-object v3, p2, v5

    shr-int/lit8 p1, p1, 0x4

    aget-wide v4, v3, p1

    or-long v6, v9, v4

    move-wide v3, v6

    goto :goto_0

    :cond_0
    return-wide v3
.end method

.method private static to_six_bit(I)I
    .locals 3

    shl-int/lit8 v0, p0, 0x1a

    const/high16 v1, -0x4000000

    and-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0xc

    const/high16 v2, 0xfc0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x2

    const v2, 0xfc00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xfc

    or-int/2addr p0, v0

    return p0
.end method

.method private static to_six_bit(J)J
    .locals 8

    const/16 v0, 0x1a

    shl-long v0, p0, v0

    const-wide v2, -0x3ffffff04000000L

    and-long v4, v0, v2

    const/16 v0, 0xc

    shl-long v0, p0, v0

    const-wide v2, 0xfc000000fc0000L

    and-long v6, v0, v2

    or-long v0, v4, v6

    const/4 v2, 0x2

    shr-long v2, p0, v2

    const-wide v4, 0xfc000000fc00L

    and-long v6, v2, v4

    or-long v2, v0, v6

    const/16 v0, 0x10

    shr-long/2addr p0, v0

    const-wide v0, 0xfc000000fcL

    and-long v4, p0, v0

    or-long p0, v2, v4

    return-wide p0
.end method
