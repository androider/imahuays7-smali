.class Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# static fields
.field protected static final alphabiasshift:I = 0xa

.field protected static final alpharadbias:I = 0x40000

.field protected static final alpharadbshift:I = 0x12

.field protected static final beta:I = 0x40

.field protected static final betagamma:I = 0x10000

.field protected static final betashift:I = 0xa

.field protected static final gamma:I = 0x400

.field protected static final gammashift:I = 0xa

.field protected static final initalpha:I = 0x400

.field protected static final initrad:I = 0x20

.field protected static final initradius:I = 0x800

.field protected static final intbias:I = 0x10000

.field protected static final intbiasshift:I = 0x10

.field protected static final maxnetpos:I = 0xff

.field protected static final minpicturebytes:I = 0x5e5

.field protected static final ncycles:I = 0x64

.field protected static final netbiasshift:I = 0x4

.field protected static final netsize:I = 0x100

.field protected static final prime1:I = 0x1f3

.field protected static final prime2:I = 0x1eb

.field protected static final prime3:I = 0x1e7

.field protected static final prime4:I = 0x1f7

.field protected static final radbias:I = 0x100

.field protected static final radbiasshift:I = 0x8

.field protected static final radiusbias:I = 0x40

.field protected static final radiusbiasshift:I = 0x6

.field protected static final radiusdec:I = 0x1e


# instance fields
.field protected alphadec:I

.field protected bias:[I

.field protected freq:[I

.field protected lengthcount:I

.field protected netindex:[I

.field protected network:[[I

.field protected radpower:[I

.field protected samplefac:I

.field protected thepicture:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 3

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 597
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->netindex:[I

    .line 601
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->bias:[I

    .line 604
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->freq:[I

    const/16 v1, 0x20

    .line 606
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->radpower:[I

    .line 619
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->thepicture:[B

    .line 620
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->lengthcount:I

    .line 621
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->samplefac:I

    .line 623
    new-array p1, v0, [[I

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_0

    .line 625
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    aput-object v1, p3, p2

    .line 626
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object p3, p3, p2

    const/4 v1, 0x2

    shl-int/lit8 v2, p2, 0xc

    .line 627
    div-int/2addr v2, v0

    aput v2, p3, v1

    const/4 v1, 0x1

    aput v2, p3, v1

    aput v2, p3, p1

    .line 628
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->freq:[I

    aput v0, p3, p2

    .line 629
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->bias:[I

    aput p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected alterneigh(IIIII)V
    .locals 14

    move-object v0, p0

    sub-int v3, p2, p1

    const/4 v4, -0x1

    if-ge v3, v4, :cond_0

    const/4 v3, -0x1

    :cond_0
    add-int v1, p2, p1

    const/16 v4, 0x100

    if-le v1, v4, :cond_1

    const/16 v1, 0x100

    :cond_1
    add-int/lit8 v4, p2, 0x1

    const/4 v5, 0x1

    add-int/lit8 v2, p2, -0x1

    const/4 v6, 0x1

    :goto_0
    if-lt v4, v1, :cond_3

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 896
    :cond_3
    :goto_1
    iget-object v7, v0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->radpower:[I

    add-int/lit8 v8, v6, 0x1

    aget v6, v7, v6

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/high16 v10, 0x40000

    if-ge v4, v1, :cond_4

    .line 898
    iget-object v11, v0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    add-int/lit8 v12, v4, 0x1

    aget-object v4, v11, v4

    .line 900
    :try_start_0
    aget v11, v4, v9

    aget v13, v4, v9

    sub-int v13, v13, p3

    mul-int v13, v13, v6

    div-int/2addr v13, v10

    sub-int/2addr v11, v13

    aput v11, v4, v9

    .line 901
    aget v11, v4, v5

    aget v13, v4, v5

    sub-int v13, v13, p4

    mul-int v13, v13, v6

    div-int/2addr v13, v10

    sub-int/2addr v11, v13

    aput v11, v4, v5

    .line 902
    aget v11, v4, v7

    aget v13, v4, v7

    sub-int v13, v13, p5

    mul-int v13, v13, v6

    div-int/2addr v13, v10

    sub-int/2addr v11, v13

    aput v11, v4, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v4, v12

    :cond_4
    if-le v2, v3, :cond_5

    .line 907
    iget-object v11, v0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    add-int/lit8 v12, v2, -0x1

    aget-object v2, v11, v2

    .line 909
    :try_start_1
    aget v11, v2, v9

    aget v13, v2, v9

    sub-int v13, v13, p3

    mul-int v13, v13, v6

    div-int/2addr v13, v10

    sub-int/2addr v11, v13

    aput v11, v2, v9

    .line 910
    aget v9, v2, v5

    aget v11, v2, v5

    sub-int v11, v11, p4

    mul-int v11, v11, v6

    div-int/2addr v11, v10

    sub-int/2addr v9, v11

    aput v9, v2, v5

    .line 911
    aget v9, v2, v7

    aget v11, v2, v7

    sub-int v11, v11, p5

    mul-int v6, v6, v11

    div-int/2addr v6, v10

    sub-int/2addr v9, v6

    aput v9, v2, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move v6, v8

    move v2, v12

    goto :goto_0

    :cond_5
    move v6, v8

    goto :goto_0
.end method

.method protected altersingle(IIIII)V
    .locals 3

    .line 925
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object p2, v0, p2

    const/4 v0, 0x0

    .line 926
    aget v1, p2, v0

    aget v2, p2, v0

    sub-int/2addr v2, p3

    mul-int v2, v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, p2, v0

    const/4 p3, 0x1

    .line 927
    aget v0, p2, p3

    aget v1, p2, p3

    sub-int/2addr v1, p4

    mul-int v1, v1, p1

    div-int/lit16 v1, v1, 0x400

    sub-int/2addr v0, v1

    aput v0, p2, p3

    const/4 p3, 0x2

    .line 928
    aget p4, p2, p3

    aget v0, p2, p3

    sub-int/2addr v0, p5

    mul-int p1, p1, v0

    div-int/lit16 p1, p1, 0x400

    sub-int/2addr p4, p1

    aput p4, p2, p3

    return-void
.end method

.method public colorMap()[B
    .locals 10

    const/16 v0, 0x300

    .line 634
    new-array v0, v0, [B

    const/16 v1, 0x100

    .line 635
    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 637
    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v5, v5, v4

    const/4 v6, 0x3

    aget v5, v5, v6

    aput v4, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    .line 640
    aget v6, v2, v4

    add-int/lit8 v7, v5, 0x1

    .line 641
    iget-object v8, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v8, v8, v6

    aget v8, v8, v3

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    add-int/lit8 v5, v7, 0x1

    .line 642
    iget-object v8, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v8, v8, v6

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v5, 0x1

    .line 643
    iget-object v8, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v6, v8, v6

    const/4 v8, 0x2

    aget v6, v6, v8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected contest(III)I
    .locals 9

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    :goto_0
    const/16 v6, 0x100

    if-ge v1, v6, :cond_5

    .line 951
    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v6, v6, v1

    .line 952
    aget v7, v6, v0

    sub-int/2addr v7, p1

    if-gez v7, :cond_0

    neg-int v7, v7

    :cond_0
    const/4 v8, 0x1

    .line 955
    aget v8, v6, v8

    sub-int/2addr v8, p2

    if-gez v8, :cond_1

    neg-int v8, v8

    :cond_1
    add-int/2addr v7, v8

    const/4 v8, 0x2

    .line 959
    aget v6, v6, v8

    sub-int/2addr v6, p3

    if-gez v6, :cond_2

    neg-int v6, v6

    :cond_2
    add-int/2addr v7, v6

    if-ge v7, v4, :cond_3

    move v2, v1

    move v4, v7

    .line 967
    :cond_3
    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->bias:[I

    aget v6, v6, v1

    shr-int/lit8 v6, v6, 0xc

    sub-int/2addr v7, v6

    if-ge v7, v5, :cond_4

    move v3, v1

    move v5, v7

    .line 972
    :cond_4
    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->freq:[I

    aget v6, v6, v1

    shr-int/lit8 v6, v6, 0xa

    .line 973
    iget-object v7, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->freq:[I

    aget v8, v7, v1

    sub-int/2addr v8, v6

    aput v8, v7, v1

    .line 974
    iget-object v7, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->bias:[I

    aget v8, v7, v1

    shl-int/lit8 v6, v6, 0xa

    add-int/2addr v8, v6

    aput v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 976
    :cond_5
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->freq:[I

    aget p2, p1, v2

    add-int/lit8 p2, p2, 0x40

    aput p2, p1, v2

    .line 977
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->bias:[I

    aget p2, p1, v2

    const/high16 p3, 0x10000

    sub-int/2addr p2, p3

    aput p2, p1, v2

    return v3
.end method

.method public inxbuild()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x100

    const/4 v5, 0x1

    if-ge v1, v4, :cond_5

    .line 663
    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v6, v6, v1

    .line 665
    aget v7, v6, v5

    add-int/lit8 v8, v1, 0x1

    move v10, v1

    move v9, v7

    move v7, v8

    :goto_1
    if-ge v7, v4, :cond_1

    .line 668
    iget-object v11, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v11, v11, v7

    .line 669
    aget v12, v11, v5

    if-ge v12, v9, :cond_0

    .line 671
    aget v9, v11, v5

    move v10, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 674
    :cond_1
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v4, v4, v10

    if-eq v1, v10, :cond_2

    .line 677
    aget v7, v4, v0

    .line 678
    aget v10, v6, v0

    aput v10, v4, v0

    .line 679
    aput v7, v6, v0

    .line 680
    aget v7, v4, v5

    .line 681
    aget v10, v6, v5

    aput v10, v4, v5

    .line 682
    aput v7, v6, v5

    const/4 v7, 0x2

    .line 683
    aget v10, v4, v7

    .line 684
    aget v11, v6, v7

    aput v11, v4, v7

    .line 685
    aput v10, v6, v7

    const/4 v7, 0x3

    .line 686
    aget v10, v4, v7

    .line 687
    aget v11, v6, v7

    aput v11, v4, v7

    .line 688
    aput v10, v6, v7

    :cond_2
    if-eq v9, v2, :cond_4

    .line 692
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->netindex:[I

    add-int/2addr v3, v1

    shr-int/2addr v3, v5

    aput v3, v4, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v9, :cond_3

    .line 694
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->netindex:[I

    aput v1, v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    move v2, v9

    :cond_4
    move v1, v8

    goto :goto_0

    .line 699
    :cond_5
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->netindex:[I

    const/16 v1, 0xff

    add-int/2addr v3, v1

    shr-int/2addr v3, v5

    aput v3, v0, v2

    add-int/2addr v2, v5

    :goto_3
    if-ge v2, v4, :cond_6

    .line 701
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->netindex:[I

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public learn()V
    .locals 23

    move-object/from16 v6, p0

    .line 714
    iget v0, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->lengthcount:I

    const/16 v1, 0x5e5

    const/4 v7, 0x1

    if-ge v0, v1, :cond_0

    .line 715
    iput v7, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->samplefac:I

    .line 716
    :cond_0
    iget v0, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->samplefac:I

    sub-int/2addr v0, v7

    const/4 v2, 0x3

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1e

    iput v0, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->alphadec:I

    .line 717
    iget-object v8, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->thepicture:[B

    .line 719
    iget v9, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->lengthcount:I

    .line 720
    iget v0, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->lengthcount:I

    iget v3, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->samplefac:I

    mul-int/lit8 v3, v3, 0x3

    div-int v10, v0, v3

    .line 721
    div-int/lit8 v0, v10, 0x64

    const/16 v3, 0x800

    const/16 v4, 0x20

    const/4 v11, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v12, 0x400

    if-ge v5, v4, :cond_1

    .line 729
    iget-object v13, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->radpower:[I

    mul-int v14, v5, v5

    rsub-int v14, v14, 0x400

    mul-int/lit16 v14, v14, 0x100

    div-int/2addr v14, v12

    mul-int v12, v12, v14

    aput v12, v13, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 733
    :cond_1
    iget v5, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->lengthcount:I

    if-ge v5, v1, :cond_2

    const/4 v13, 0x3

    goto :goto_1

    .line 735
    :cond_2
    iget v2, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1f3

    if-eqz v2, :cond_3

    const/16 v1, 0x5d9

    const/16 v13, 0x5d9

    goto :goto_1

    .line 738
    :cond_3
    iget v2, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1eb

    if-eqz v2, :cond_4

    const/16 v1, 0x5c1

    const/16 v13, 0x5c1

    goto :goto_1

    .line 741
    :cond_4
    iget v2, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1e7

    if-eqz v2, :cond_5

    const/16 v1, 0x5b5

    const/16 v13, 0x5b5

    goto :goto_1

    :cond_5
    const/16 v13, 0x5e5

    :goto_1
    move/from16 v17, v0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x400

    const/16 v16, 0x20

    const/16 v18, 0x800

    :cond_6
    :goto_2
    if-ge v12, v10, :cond_c

    add-int/lit8 v0, v14, 0x0

    .line 750
    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v5, v0, 0x4

    add-int/lit8 v0, v14, 0x1

    .line 751
    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v4, v0, 0x4

    add-int/lit8 v0, v14, 0x2

    .line 752
    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x4

    .line 753
    invoke-virtual {v6, v5, v4, v3}, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->contest(III)I

    move-result v19

    move-object v0, v6

    move v1, v15

    move/from16 v2, v19

    move/from16 v20, v3

    move v3, v5

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v5, v20

    .line 755
    invoke-virtual/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->altersingle(IIIII)V

    if-eqz v16, :cond_7

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v21

    move/from16 v5, v20

    .line 757
    invoke-virtual/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->alterneigh(IIIII)V

    :cond_7
    add-int/2addr v14, v13

    if-lt v14, v9, :cond_8

    .line 761
    iget v0, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->lengthcount:I

    sub-int/2addr v14, v0

    :cond_8
    add-int/lit8 v12, v12, 0x1

    if-nez v17, :cond_9

    const/16 v17, 0x1

    .line 766
    :cond_9
    rem-int v0, v12, v17

    if-nez v0, :cond_6

    .line 767
    iget v0, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->alphadec:I

    div-int v0, v15, v0

    sub-int/2addr v15, v0

    .line 768
    div-int/lit8 v0, v18, 0x1e

    sub-int v18, v18, v0

    shr-int/lit8 v0, v18, 0x6

    if-gt v0, v7, :cond_a

    const/4 v0, 0x0

    :cond_a
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 773
    iget-object v2, v6, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->radpower:[I

    mul-int v3, v0, v0

    mul-int v4, v1, v1

    sub-int v4, v3, v4

    mul-int/lit16 v4, v4, 0x100

    div-int/2addr v4, v3

    mul-int v4, v4, v15

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    move/from16 v16, v0

    goto :goto_2

    :cond_c
    return-void
.end method

.method public map(III)I
    .locals 12

    .line 793
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->netindex:[I

    aget v0, v0, p2

    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x3e8

    const/4 v3, -0x1

    const/16 v4, 0x3e8

    :cond_0
    :goto_0
    const/16 v5, 0x100

    if-lt v0, v5, :cond_2

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v0, v5, :cond_7

    .line 798
    iget-object v10, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v10, v10, v0

    .line 799
    aget v11, v10, v9

    sub-int/2addr v11, p2

    if-lt v11, v4, :cond_3

    const/16 v0, 0x100

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-gez v11, :cond_4

    neg-int v11, v11

    .line 806
    :cond_4
    aget v5, v10, v8

    sub-int/2addr v5, p1

    if-gez v5, :cond_5

    neg-int v5, v5

    :cond_5
    add-int/2addr v11, v5

    if-ge v11, v4, :cond_7

    .line 811
    aget v5, v10, v7

    sub-int/2addr v5, p3

    if-gez v5, :cond_6

    neg-int v5, v5

    :cond_6
    add-int/2addr v11, v5

    if-ge v11, v4, :cond_7

    .line 817
    aget v3, v10, v6

    move v4, v11

    :cond_7
    :goto_2
    if-ltz v1, :cond_0

    .line 823
    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v5, v5, v1

    .line 824
    aget v9, v5, v9

    sub-int v9, p2, v9

    if-lt v9, v4, :cond_8

    const/4 v1, -0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v1, v1, -0x1

    if-gez v9, :cond_9

    neg-int v9, v9

    .line 831
    :cond_9
    aget v8, v5, v8

    sub-int/2addr v8, p1

    if-gez v8, :cond_a

    neg-int v8, v8

    :cond_a
    add-int/2addr v9, v8

    if-ge v9, v4, :cond_0

    .line 836
    aget v7, v5, v7

    sub-int/2addr v7, p3

    if-gez v7, :cond_b

    neg-int v7, v7

    :cond_b
    add-int/2addr v7, v9

    if-ge v7, v4, :cond_0

    .line 842
    aget v3, v5, v6

    move v4, v7

    goto :goto_0
.end method

.method public process()[B
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->learn()V

    .line 853
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->unbiasnet()V

    .line 854
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->inxbuild()V

    .line 855
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->colorMap()[B

    move-result-object v0

    return-object v0
.end method

.method public unbiasnet()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 868
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    aget v3, v2, v0

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v0

    .line 869
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 870
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x2

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 871
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x3

    aput v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
