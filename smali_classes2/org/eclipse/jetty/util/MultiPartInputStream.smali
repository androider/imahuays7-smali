.class public Lorg/eclipse/jetty/util/MultiPartInputStream;
.super Ljava/lang/Object;
.source "MultiPartInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;,
        Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __DEFAULT_MULTIPART_CONFIG:Ljavax/servlet/MultipartConfigElement;


# instance fields
.field protected _config:Ljavax/servlet/MultipartConfigElement;

.field protected _contentType:Ljava/lang/String;

.field protected _contextTmpDir:Ljava/io/File;

.field protected _deleteOnExit:Z

.field protected _in:Ljava/io/InputStream;

.field protected _parts:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _tmpDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-class v0, Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 63
    new-instance v0, Ljavax/servlet/MultipartConfigElement;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/MultipartConfigElement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->__DEFAULT_MULTIPART_CONFIG:Ljavax/servlet/MultipartConfigElement;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljavax/servlet/MultipartConfigElement;Ljava/io/File;)V
    .locals 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/ReadLineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    .line 342
    iput-object p2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    .line 343
    iput-object p3, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    .line 344
    iput-object p4, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    .line 345
    iget-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    if-nez p1, :cond_0

    .line 346
    new-instance p1, Ljava/io/File;

    const-string p2, "java.io.tmpdir"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    .line 348
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    if-nez p1, :cond_1

    .line 349
    new-instance p1, Ljavax/servlet/MultipartConfigElement;

    iget-object p2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/servlet/MultipartConfigElement;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    :cond_1
    return-void
.end method

.method private filenameValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3d

    .line 775
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 776
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".??[a-z,A-Z]\\:\\\\[^\\\\].*"

    .line 778
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 782
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    const/16 v4, 0x22

    if-eq v2, v4, :cond_0

    if-ne v2, v3, :cond_1

    .line 784
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 785
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_3

    .line 787
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1

    .line 796
    :cond_4
    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private value(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    const/16 p2, 0x3d

    .line 766
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 767
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 768
    invoke-static {p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deleteParts()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/util/MultiException;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->getParsedParts()Ljava/util/Collection;

    move-result-object v0

    .line 381
    new-instance v1, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 382
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/Part;

    .line 386
    :try_start_0
    check-cast v2, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->cleanUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 390
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->clear()V

    .line 395
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrowMulti()V

    return-void
.end method

.method public getParsedParts()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/servlet/http/Part;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v0, :cond_0

    .line 360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 366
    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v2

    .line 367
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getPart(Ljava/lang/String;)Ljavax/servlet/http/Part;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->parse()V

    .line 433
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/servlet/http/Part;

    return-object p1
.end method

.method public getParts()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/servlet/http/Part;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->parse()V

    .line 410
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 414
    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v2

    .line 415
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isDeleteOnExit()Z
    .locals 1

    .line 742
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_deleteOnExit:Z

    return v0
.end method

.method protected parse()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 447
    iget-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v2, :cond_0

    return-void

    .line 452
    :cond_0
    new-instance v2, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v2}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    iput-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    .line 455
    iget-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    if-eqz v2, :cond_37

    iget-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    const-string v3, "multipart/form-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_14

    .line 460
    :cond_1
    iget-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v2}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 461
    iget-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    iput-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto :goto_0

    :cond_2
    const-string v2, ""

    .line 462
    iget-object v3, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v3}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 463
    iget-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    iput-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto :goto_0

    .line 466
    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v3}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v2}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 468
    iput-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto :goto_0

    .line 470
    :cond_4
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    iget-object v4, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v4}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    .line 473
    :goto_0
    iget-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 474
    iget-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5
    const-string v2, ""

    .line 477
    iget-object v3, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    const-string v4, "boundary="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_7

    .line 480
    iget-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_6

    .line 481
    iget-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 482
    :cond_6
    iget-object v5, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream;->value(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ISO-8859-1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 489
    iget-object v5, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v5, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    .line 492
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Missing content for multipart request"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_b

    .line 496
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    if-nez v7, :cond_9

    .line 500
    sget-object v5, Lorg/eclipse/jetty/util/MultiPartInputStream;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "Badly formatted multipart request"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x1

    .line 503
    :cond_9
    iget-object v5, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v5, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_1

    .line 504
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_b
    if-nez v5, :cond_c

    .line 508
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Missing initial multi part boundary"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    const/4 v2, 0x0

    const-wide/16 v9, 0x0

    :goto_2
    if-nez v2, :cond_35

    .line 519
    new-instance v5, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v5}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 522
    :goto_3
    iget-object v15, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v15, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v15}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_d

    goto/16 :goto_13

    :cond_d
    const-string v11, ""

    .line 529
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    if-nez v12, :cond_e

    .line 557
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Missing content-disposition"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 560
    :cond_e
    new-instance v11, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v15, ";"

    invoke-direct {v11, v12, v15, v6, v4}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 563
    :goto_4
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 565
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 566
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "form-data"

    .line 567
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v12, 0x1

    goto :goto_5

    :cond_f
    const-string v4, "name="

    .line 569
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    .line 570
    invoke-direct {v1, v7, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream;->value(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    goto :goto_5

    :cond_10
    const-string v4, "filename="

    .line 571
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 572
    invoke-direct {v1, v7}, Lorg/eclipse/jetty/util/MultiPartInputStream;->filenameValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :cond_11
    :goto_5
    const/4 v4, 0x1

    goto :goto_4

    :cond_12
    if-nez v12, :cond_13

    goto :goto_6

    :cond_13
    if-nez v15, :cond_14

    :goto_6
    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_2

    .line 591
    :cond_14
    new-instance v4, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    invoke-direct {v4, v1, v15, v6}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;-><init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->setHeaders(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 593
    invoke-virtual {v4, v13}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->setContentType(Ljava/lang/String;)V

    .line 594
    iget-object v5, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v5, v15, v4}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 595
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->open()V

    const-string v5, "base64"

    .line 598
    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 600
    new-instance v5, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;

    iget-object v6, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v6, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-direct {v5, v6}, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;-><init>(Lorg/eclipse/jetty/util/ReadLineInputStream;)V

    goto :goto_7

    :cond_15
    const-string v5, "quoted-printable"

    .line 602
    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 604
    new-instance v5, Lorg/eclipse/jetty/util/MultiPartInputStream$1;

    iget-object v6, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    invoke-direct {v5, v1, v6}, Lorg/eclipse/jetty/util/MultiPartInputStream$1;-><init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/io/InputStream;)V

    goto :goto_7

    .line 626
    :cond_16
    iget-object v5, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    :goto_7
    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, -0x2

    :goto_8
    const/4 v12, -0x1

    move v13, v8

    move v8, v7

    const/4 v7, 0x0

    :goto_9
    if-eq v11, v6, :cond_17

    move v14, v11

    goto :goto_a

    .line 639
    :cond_17
    :try_start_0
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v14

    :goto_a
    const/16 v15, 0xd

    const/16 v6, 0xa

    if-eq v14, v12, :cond_20

    const-wide/16 v21, 0x1

    add-long v23, v9, v21

    .line 642
    iget-object v9, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v9}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v9

    const-wide/16 v17, 0x0

    cmp-long v11, v9, v17

    if-lez v11, :cond_18

    iget-object v9, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v9}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v9

    cmp-long v11, v23, v9

    if-lez v11, :cond_18

    .line 643
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request exceeds maxRequestSize ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v5}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18
    if-eq v14, v15, :cond_1e

    if-ne v14, v6, :cond_19

    goto :goto_b

    :cond_19
    if-ltz v7, :cond_1a

    .line 663
    array-length v9, v3

    if-ge v7, v9, :cond_1a

    aget-byte v9, v3, v7

    if-ne v14, v9, :cond_1a

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v9, v23

    const/4 v6, -0x2

    const/4 v11, -0x2

    goto :goto_9

    :cond_1a
    if-eqz v8, :cond_1b

    .line 672
    invoke-virtual {v4, v15}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    :cond_1b
    if-eqz v13, :cond_1c

    .line 675
    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    :cond_1c
    if-lez v7, :cond_1d

    const/4 v6, 0x0

    .line 679
    invoke-virtual {v4, v3, v6, v7}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write([BII)V

    .line 682
    :cond_1d
    invoke-virtual {v4, v14}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    move-wide/from16 v9, v23

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v11, -0x2

    const/4 v13, 0x0

    goto :goto_9

    :cond_1e
    :goto_b
    if-ne v14, v15, :cond_1f

    const/4 v9, 0x1

    .line 652
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->mark(I)V

    .line 653
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v9

    if-eq v9, v6, :cond_21

    .line 655
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    :cond_1f
    const/4 v9, -0x2

    goto :goto_c

    :cond_20
    move-wide/from16 v23, v9

    move v9, v11

    :cond_21
    :goto_c
    if-lez v7, :cond_23

    .line 687
    array-length v10, v3

    add-int/lit8 v10, v10, -0x2

    if-lt v7, v10, :cond_22

    goto :goto_d

    :cond_22
    const/4 v11, 0x1

    goto :goto_e

    :cond_23
    :goto_d
    array-length v10, v3

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ne v7, v10, :cond_26

    :goto_e
    if-eqz v8, :cond_24

    .line 690
    invoke-virtual {v4, v15}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    :cond_24
    if-eqz v13, :cond_25

    .line 693
    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    :cond_25
    const/4 v8, 0x0

    .line 696
    invoke-virtual {v4, v3, v8, v7}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write([BII)V

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v13, 0x0

    :cond_26
    if-gtz v7, :cond_2e

    if-ne v14, v12, :cond_27

    goto :goto_12

    :cond_27
    if-eqz v8, :cond_28

    .line 713
    invoke-virtual {v4, v15}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    :cond_28
    if-eqz v13, :cond_29

    .line 716
    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    :cond_29
    if-ne v14, v15, :cond_2a

    const/4 v7, 0x1

    goto :goto_f

    :cond_2a
    const/4 v7, 0x0

    :goto_f
    if-eq v14, v6, :cond_2c

    if-ne v9, v6, :cond_2b

    goto :goto_10

    :cond_2b
    const/4 v8, 0x0

    goto :goto_11

    :cond_2c
    :goto_10
    const/4 v8, 0x1

    :goto_11
    if-ne v9, v6, :cond_2d

    const/4 v9, -0x2

    :cond_2d
    move v11, v9

    move-wide/from16 v9, v23

    const/4 v6, -0x2

    goto/16 :goto_8

    .line 704
    :cond_2e
    :goto_12
    array-length v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v7, v5, :cond_2f

    const/4 v2, 0x1

    .line 727
    :cond_2f
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->close()V

    move-wide/from16 v9, v23

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->close()V

    throw v2

    :cond_30
    const/4 v11, 0x1

    .line 532
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v6, v4

    add-long v19, v9, v6

    .line 533
    iget-object v4, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v4}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_31

    iget-object v4, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v4}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v6

    cmp-long v4, v19, v6

    if-lez v4, :cond_31

    .line 534
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request exceeds maxRequestSize ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v4}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_31
    const/16 v4, 0x3a

    const/4 v6, 0x0

    .line 537
    invoke-virtual {v15, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-lez v4, :cond_34

    .line 540
    invoke-virtual {v15, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    .line 541
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v15, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 542
    invoke-virtual {v5, v7, v4}, Lorg/eclipse/jetty/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "content-disposition"

    .line 543
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_32

    move-object v12, v4

    :cond_32
    const-string v10, "content-type"

    .line 545
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    move-object v13, v4

    :cond_33
    const-string v10, "content-transfer-encoding"

    .line 547
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    move-object v14, v4

    :cond_34
    move-wide/from16 v9, v19

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_35
    :goto_13
    if-nez v2, :cond_36

    .line 731
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Incomplete parts"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_36
    return-void

    :cond_37
    :goto_14
    return-void
.end method

.method public setDeleteOnExit(Z)V
    .locals 0

    .line 736
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_deleteOnExit:Z

    return-void
.end method
