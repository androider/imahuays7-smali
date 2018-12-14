.class public Lorg/apache/commons/io/b;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:C

.field private static final c:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2e

    .line 96
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/b;->a:Ljava/lang/String;

    .line 111
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/b;->b:C

    .line 118
    invoke-static {}, Lorg/apache/commons/io/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    .line 119
    sput-char v0, Lorg/apache/commons/io/b;->c:C

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    .line 121
    sput-char v0, Lorg/apache/commons/io/b;->c:C

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v0, 0x2f

    .line 705
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x5c

    .line 706
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    .line 707
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static a()Z
    .locals 2

    .line 139
    sget-char v0, Lorg/apache/commons/io/b;->b:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1285
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/b;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_e

    if-nez p1, :cond_1

    goto/16 :goto_6

    :cond_1
    if-nez p2, :cond_2

    .line 1336
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1338
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/io/b;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1342
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1346
    :goto_0
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1347
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1348
    aget v4, v3, v1

    .line 1349
    aget v3, v3, v0

    move v5, v4

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v8, v4

    move v4, v3

    move v3, v8

    .line 1354
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_b

    .line 1356
    aget-object v6, p1, v5

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 1359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v3, v6, :cond_4

    goto :goto_5

    :cond_4
    :goto_2
    const/4 v4, 0x0

    goto :goto_4

    .line 1364
    :cond_5
    aget-object v6, p1, v5

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1367
    array-length v4, p1

    sub-int/2addr v4, v0

    if-ne v5, v4, :cond_6

    .line 1368
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :cond_6
    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_9

    .line 1375
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v3, v6}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v3, 0x1

    .line 1380
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v4, v6}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_a

    const/4 v6, 0x2

    .line 1382
    new-array v6, v6, [I

    aput v5, v6, v1

    aput v4, v6, v0

    invoke-virtual {v2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1386
    :cond_9
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v3, v6}, Lorg/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_5

    .line 1393
    :cond_a
    :goto_3
    aget-object v4, p1, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1401
    :cond_b
    :goto_5
    array-length v6, p1

    if-ne v5, v6, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_c

    return v0

    .line 1405
    :cond_c
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v6

    if-gtz v6, :cond_d

    return v1

    :cond_d
    move v8, v4

    move v4, v3

    move v3, v8

    goto/16 :goto_0

    :cond_e
    :goto_6
    return v1
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x2e

    .line 728
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 729
    invoke-static {p0}, Lorg/apache/commons/io/b;->a(Ljava/lang/String;)I

    move-result p0

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1039
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/b;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1043
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static d(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/16 v0, 0x3f

    .line 1422
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x2a

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1423
    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v4

    return-object v0

    .line 1426
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 1427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1430
    array-length v5, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    aget-char v8, p0, v6

    if-eq v8, v0, :cond_2

    if-ne v8, v3, :cond_1

    goto :goto_1

    .line 1442
    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1432
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 1433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1434
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3
    if-ne v8, v0, :cond_4

    const-string v7, "?"

    .line 1437
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eq v7, v3, :cond_5

    const-string v7, "*"

    .line 1439
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_0

    .line 1446
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_7

    .line 1447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
