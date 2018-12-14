.class public Lorg/apache/commons/fileupload/disk/DiskFileItem;
.super Ljava/lang/Object;
.source "DiskFileItem.java"

# interfaces
.implements Lorg/apache/commons/fileupload/FileItem;


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final SERIALIZABLE_PROPERTY:Ljava/lang/String;

.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialVersionUID:J = 0x1f0d7226839a8871L


# instance fields
.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Z

.field private final f:Ljava/lang/String;

.field private g:J

.field private final h:I

.field private final i:Ljava/io/File;

.field private j:[B

.field private transient k:Lorg/apache/commons/io/output/b;

.field private transient l:Ljava/io/File;

.field private m:Ljava/io/File;

.field private n:Lorg/apache/commons/fileupload/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/commons/fileupload/disk/DiskFileItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".serializable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->SERIALIZABLE_PROPERTY:Ljava/lang/String;

    .line 104
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->a:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/io/File;)V
    .locals 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 136
    iput-wide v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->g:J

    .line 196
    iput-object p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->c:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->d:Ljava/lang/String;

    .line 198
    iput-boolean p3, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->e:Z

    .line 199
    iput-object p4, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->f:Ljava/lang/String;

    .line 200
    iput p5, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->h:I

    .line 201
    iput-object p6, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->i:Ljava/io/File;

    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    .line 606
    sget-object v0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 607
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5f5e100

    if-ge v0, v2, :cond_0

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00000000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 661
    sget-object v0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->SERIALIZABLE_PROPERTY:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/commons/fileupload/disk/DiskFileItem;->SERIALIZABLE_PROPERTY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not true, rejecting to deserialize a DiskFileItem."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 666
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 673
    iget-object p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->i:Ljava/io/File;

    if-eqz p1, :cond_2

    .line 674
    iget-object p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->i:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 676
    iget-object p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->i:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\u0000"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 677
    new-instance p1, Ljava/io/IOException;

    const-string v2, "The repository [%s] contains a null character"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->i:Ljava/io/File;

    .line 679
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 677
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 682
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v2, "The repository [%s] is not a directory"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->i:Ljava/io/File;

    .line 684
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 682
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 688
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 689
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 692
    :cond_3
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->m:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 693
    invoke-static {v0, p1}, Lorg/apache/commons/io/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 694
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 695
    iput-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->m:Ljava/io/File;

    .line 697
    :goto_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 699
    iput-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->get()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 643
    iput-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    .line 644
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->e()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->m:Ljava/io/File;

    .line 648
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 5

    .line 583
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->l:Ljava/io/File;

    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->i:Ljava/io/File;

    if-nez v0, :cond_0

    .line 586
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string v1, "upload_%s_%s.tmp"

    const/4 v2, 0x2

    .line 589
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/commons/fileupload/disk/DiskFileItem;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 591
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->l:Ljava/io/File;

    .line 593
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->l:Ljava/io/File;

    return-object v0
.end method

.method public delete()V
    .locals 2

    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    .line 461
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getStoreLocation()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 567
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->e()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public get()[B
    .locals 5

    .line 307
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->isInMemory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->d()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    return-object v0

    .line 314
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getSize()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 318
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    invoke-virtual {v4}, Lorg/apache/commons/io/output/b;->e()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 319
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    .line 325
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 328
    :catch_0
    :cond_2
    throw v0

    :catch_1
    move-object v2, v1

    :catch_2
    if-eqz v2, :cond_3

    .line 325
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_3
    move-object v0, v1

    :catch_4
    :cond_4
    :goto_1
    return-object v0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 3

    .line 246
    new-instance v0, Lorg/apache/commons/fileupload/b;

    invoke-direct {v0}, Lorg/apache/commons/fileupload/b;-><init>()V

    const/4 v1, 0x1

    .line 247
    invoke-virtual {v0, v1}, Lorg/apache/commons/fileupload/b;->a(Z)V

    .line 249
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getContentType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/fileupload/b;->a(Ljava/lang/String;C)Ljava/util/Map;

    move-result-object v0

    const-string v1, "charset"

    .line 250
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lorg/apache/commons/fileupload/a;
    .locals 1

    .line 707
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->n:Lorg/apache/commons/fileupload/a;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->isInMemory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    invoke-virtual {v1}, Lorg/apache/commons/io/output/b;->e()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->d()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    .line 224
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->f:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/fileupload/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    if-nez v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->a()Ljava/io/File;

    move-result-object v0

    .line 533
    new-instance v1, Lorg/apache/commons/io/output/b;

    iget v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->h:I

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/io/output/b;-><init>(ILjava/io/File;)V

    iput-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    .line 535
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    return-object v0
.end method

.method public getSize()J
    .locals 5

    .line 288
    iget-wide v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 289
    iget-wide v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->g:J

    return-wide v0

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    .line 292
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->d()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    .line 295
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStoreLocation()Ljava/io/File;
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 557
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->e()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .line 362
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->get()[B

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getCharSet()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ISO-8859-1"

    .line 368
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 370
    :catch_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->get()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public isFormField()Z
    .locals 1

    .line 503
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->e:Z

    return v0
.end method

.method public isInMemory()Z
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->j:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->k:Lorg/apache/commons/io/output/b;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->c()Z

    move-result v0

    return v0
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->c:Ljava/lang/String;

    return-void
.end method

.method public setFormField(Z)V
    .locals 0

    .line 517
    iput-boolean p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->e:Z

    return-void
.end method

.method public setHeaders(Lorg/apache/commons/fileupload/a;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->n:Lorg/apache/commons/fileupload/a;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "name=%s, StoreLocation=%s, size=%s bytes, isFormField=%s, FieldName=%s"

    const/4 v1, 0x5

    .line 624
    new-array v1, v1, [Ljava/lang/Object;

    .line 625
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getStoreLocation()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 626
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->isFormField()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getFieldName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 624
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 395
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->isInMemory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 398
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 399
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->get()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 402
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    throw p1

    .line 406
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getStoreLocation()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 409
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->g:J

    .line 415
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 419
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 421
    :try_start_3
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 423
    :try_start_4
    invoke-static {v2, v0}, Lorg/apache/commons/io/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_2

    .line 427
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_2
    if-eqz v0, :cond_5

    .line 434
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catchall_3
    move-exception p1

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 427
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    :cond_3
    if-eqz v1, :cond_4

    .line 434
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 437
    :catch_2
    :cond_4
    throw p1

    :catch_3
    :cond_5
    :goto_2
    return-void

    .line 446
    :cond_6
    new-instance p1, Lorg/apache/commons/fileupload/FileUploadException;

    const-string v0, "Cannot write uploaded file to disk!"

    invoke-direct {p1, v0}, Lorg/apache/commons/fileupload/FileUploadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
