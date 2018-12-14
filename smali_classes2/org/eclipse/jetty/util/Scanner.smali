.class public Lorg/eclipse/jetty/util/Scanner;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;,
        Lorg/eclipse/jetty/util/Scanner$BulkListener;,
        Lorg/eclipse/jetty/util/Scanner$DiscreteListener;,
        Lorg/eclipse/jetty/util/Scanner$ScanListener;,
        Lorg/eclipse/jetty/util/Scanner$Listener;,
        Lorg/eclipse/jetty/util/Scanner$TimeNSize;,
        Lorg/eclipse/jetty/util/Scanner$Notification;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static __scannerId:I


# instance fields
.field private final _currentScan:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;"
        }
    .end annotation
.end field

.field private _filter:Ljava/io/FilenameFilter;

.field private final _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/util/Scanner$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final _notifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$Notification;",
            ">;"
        }
    .end annotation
.end field

.field private final _prevScan:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;"
        }
    .end annotation
.end field

.field private _reportDirs:Z

.field private _reportExisting:Z

.field private volatile _running:Z

.field private _scanCount:I

.field private _scanDepth:I

.field private final _scanDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private _scanInterval:I

.field private _task:Ljava/util/TimerTask;

.field private _timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/eclipse/jetty/util/Scanner;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 145
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanCount:I

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    .line 60
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/Scanner;->_reportExisting:Z

    .line 62
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/Scanner;->_reportDirs:Z

    .line 65
    iput v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    return-void
.end method

.method private reportAddition(Ljava/lang/String;)V
    .locals 3

    .line 608
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 609
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 614
    :try_start_0
    instance-of v2, v1, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    if-eqz v2, :cond_0

    .line 615
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    invoke-interface {v2, p1}, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;->fileAdded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 623
    invoke-direct {p0, v1, p1, v2}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 619
    invoke-direct {p0, v1, p1, v2}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reportBulkChanges(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 685
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 690
    :try_start_0
    instance-of v2, v1, Lorg/eclipse/jetty/util/Scanner$BulkListener;

    if-eqz v2, :cond_0

    .line 691
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jetty/util/Scanner$BulkListener;

    invoke-interface {v2, p1}, Lorg/eclipse/jetty/util/Scanner$BulkListener;->filesChanged(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 699
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v2}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 695
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v2}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reportChange(Ljava/lang/String;)V
    .locals 3

    .line 662
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 663
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 668
    :try_start_0
    instance-of v2, v1, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    if-eqz v2, :cond_0

    .line 669
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    invoke-interface {v2, p1}, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;->fileChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 677
    invoke-direct {p0, v1, p1, v2}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 673
    invoke-direct {p0, v1, p1, v2}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reportRemoval(Ljava/lang/String;)V
    .locals 3

    .line 635
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 636
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 641
    :try_start_0
    instance-of v2, v1, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    if-eqz v2, :cond_0

    .line 642
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    invoke-interface {v2, p1}, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;->fileRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 650
    invoke-direct {p0, v1, p1, v2}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 646
    invoke-direct {p0, v1, p1, v2}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reportScanEnd(I)V
    .locals 5

    .line 730
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 734
    :try_start_0
    instance-of v2, v1, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;

    if-eqz v2, :cond_0

    .line 736
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;

    invoke-interface {v2, p1}, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;->scanEnded(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 741
    sget-object v3, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failed on scan end for cycle "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reportScanStart(I)V
    .locals 5

    .line 709
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 713
    :try_start_0
    instance-of v2, v1, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;

    if-eqz v2, :cond_0

    .line 715
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;

    invoke-interface {v2, p1}, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;->scanStarted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 720
    sget-object v3, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failed on scan start for cycle "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scanFile(Ljava/io/File;Ljava/util/Map;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;I)V"
        }
    .end annotation

    .line 565
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 568
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    if-lez p3, :cond_3

    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_reportDirs:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 570
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 573
    new-instance v1, Lorg/eclipse/jetty/util/Scanner$TimeNSize;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/eclipse/jetty/util/Scanner$TimeNSize;-><init>(JJ)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    if-lt p3, v0, :cond_4

    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 580
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 583
    :goto_0
    array-length p1, v0

    if-ge v1, p1, :cond_6

    .line 584
    aget-object p1, v0, v1

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jetty/util/Scanner;->scanFile(Ljava/io/File;Ljava/util/Map;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    :cond_5
    sget-object p2, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string p3, "Error listing files in directory {}"

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-interface {p2, p3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 593
    sget-object p2, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string p3, "Error scanning watched files"

    invoke-interface {p2, p3, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 599
    sget-object v0, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed on \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 304
    monitor-exit p0

    return-void

    .line 305
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 302
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addScanDir(Ljava/io/File;)V
    .locals 1

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 197
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized doStart()V
    .locals 2

    monitor-enter p0

    .line 328
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 329
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 331
    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    .line 333
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_reportExisting:Z

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->scan()V

    .line 337
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->scan()V

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->scanFiles()V

    .line 343
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    iget-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 345
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->schedule()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 327
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doStop()V
    .locals 1

    monitor-enter p0

    .line 384
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    .line 387
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    .line 392
    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 383
    monitor-exit p0

    throw v0
.end method

.method public getFilenameFilter()Ljava/io/FilenameFilter;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method public getRecursive()Z
    .locals 2

    .line 223
    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getReportDirs()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_reportDirs:Z

    return v0
.end method

.method public getReportExistingFilesOnStartup()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_reportExisting:Z

    return v0
.end method

.method public getScanDepth()I
    .locals 1

    .line 232
    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    return v0
.end method

.method public getScanDir()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method public getScanDirs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScanInterval()I
    .locals 1

    .line 154
    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanInterval:I

    return v0
.end method

.method public newTimer()Ljava/util/Timer;
    .locals 4

    .line 359
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanner-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/eclipse/jetty/util/Scanner;->__scannerId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/eclipse/jetty/util/Scanner;->__scannerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newTimerTask()Ljava/util/TimerTask;
    .locals 1

    .line 350
    new-instance v0, Lorg/eclipse/jetty/util/Scanner$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/Scanner$1;-><init>(Lorg/eclipse/jetty/util/Scanner;)V

    return-object v0
.end method

.method public declared-synchronized removeListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 317
    monitor-exit p0

    return-void

    .line 318
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 315
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reportDifferences(Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 463
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 466
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 468
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 469
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 471
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v4, Lorg/eclipse/jetty/util/Scanner$Notification;->ADDED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/Scanner$Notification;

    if-eqz v3, :cond_0

    .line 474
    sget-object v4, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 478
    :pswitch_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v4, Lorg/eclipse/jetty/util/Scanner$Notification;->CHANGED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 482
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/util/Scanner$TimeNSize;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 484
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v5, Lorg/eclipse/jetty/util/Scanner$Notification;->CHANGED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/util/Scanner$Notification;

    if-eqz v4, :cond_0

    .line 487
    sget-object v5, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v3, :cond_2

    goto :goto_0

    .line 490
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v4, Lorg/eclipse/jetty/util/Scanner$Notification;->ADDED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 497
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 499
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 501
    iget-object v2, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v4, Lorg/eclipse/jetty/util/Scanner$Notification;->REMOVED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/util/Scanner$Notification;

    if-eqz v2, :cond_4

    .line 504
    sget-object v4, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v2

    aget v2, v4, v2

    if-eq v2, v3, :cond_5

    goto :goto_1

    .line 507
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 513
    :cond_6
    sget-object v0, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 514
    sget-object v0, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    iget-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 522
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 525
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 527
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/util/Scanner$TimeNSize;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_2

    .line 530
    :cond_8
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_2

    .line 534
    :cond_9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/util/Scanner$Notification;

    .line 535
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 536
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v4, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_1

    goto :goto_2

    .line 540
    :pswitch_1
    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportAddition(Ljava/lang/String;)V

    goto :goto_2

    .line 543
    :pswitch_2
    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportChange(Ljava/lang/String;)V

    goto :goto_2

    .line 546
    :pswitch_3
    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportRemoval(Ljava/lang/String;)V

    goto :goto_2

    .line 550
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 551
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Scanner;->reportBulkChanges(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    :cond_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 462
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized scan()V
    .locals 3

    monitor-enter p0

    .line 401
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanCount:I

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Scanner;->reportScanStart(I)V

    .line 402
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->scanFiles()V

    .line 403
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    iget-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/Scanner;->reportDifferences(Ljava/util/Map;Ljava/util/Map;)V

    .line 404
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 405
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    iget-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 406
    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanCount:I

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Scanner;->reportScanEnd(I)V

    .line 408
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :try_start_1
    instance-of v2, v1, Lorg/eclipse/jetty/util/Scanner$ScanListener;

    if-eqz v2, :cond_0

    .line 413
    check-cast v1, Lorg/eclipse/jetty/util/Scanner$ScanListener;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/Scanner$ScanListener;->scan()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 421
    :try_start_2
    sget-object v2, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 417
    sget-object v2, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 424
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 400
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanFiles()V
    .locals 4

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 432
    monitor-exit p0

    return-void

    .line 434
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 435
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 436
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_1

    .line 440
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 443
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/eclipse/jetty/util/Scanner;->scanFile(Ljava/io/File;Ljava/util/Map;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 447
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Error scanning files."

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 450
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 430
    monitor-exit p0

    throw v0
.end method

.method public schedule()V
    .locals 9

    .line 364
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 368
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 370
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->getScanInterval()I

    move-result v0

    if-lez v0, :cond_2

    .line 372
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->newTimer()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    .line 373
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->newTimerTask()Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    .line 374
    iget-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    iget-object v2, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->getScanInterval()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x3f2

    mul-long v3, v3, v5

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->getScanInterval()I

    move-result v0

    int-to-long v7, v0

    mul-long v5, v5, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    return-void
.end method

.method public setFilenameFilter(Ljava/io/FilenameFilter;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public setRecursive(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 213
    :goto_0
    iput p1, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    return-void
.end method

.method public setReportDirs(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/Scanner;->_reportDirs:Z

    return-void
.end method

.method public setReportExistingFilesOnStartup(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/Scanner;->_reportExisting:Z

    return-void
.end method

.method public setScanDepth(I)V
    .locals 0

    .line 241
    iput p1, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    return-void
.end method

.method public setScanDir(Ljava/io/File;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setScanDirs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public declared-synchronized setScanInterval(I)V
    .locals 0

    monitor-enter p0

    .line 163
    :try_start_0
    iput p1, p0, Lorg/eclipse/jetty/util/Scanner;->_scanInterval:I

    .line 164
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->schedule()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 162
    monitor-exit p0

    throw p1
.end method
