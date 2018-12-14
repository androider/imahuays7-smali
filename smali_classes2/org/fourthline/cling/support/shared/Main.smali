.class public abstract Lorg/fourthline/cling/support/shared/Main;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Lorg/fourthline/cling/support/shared/ShutdownHandler;


# instance fields
.field protected final errorWindow:Ljavax/swing/JFrame;

.field protected isRegularShutdown:Z

.field logPresenter:Lorg/fourthline/cling/support/shared/log/LogView$Presenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected final loggingHandler:Lorg/seamless/swing/logging/LoggingHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljavax/swing/JFrame;

    invoke-direct {v0}, Ljavax/swing/JFrame;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    .line 56
    new-instance v0, Lorg/fourthline/cling/support/shared/Main$1;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/support/shared/Main$1;-><init>(Lorg/fourthline/cling/support/shared/Main;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/shared/Main;->loggingHandler:Lorg/seamless/swing/logging/LoggingHandler;

    return-void
.end method


# virtual methods
.method protected abstract getAppName()Ljava/lang/String;
.end method

.method public init()V
    .locals 4

    .line 70
    :try_start_0
    invoke-static {}, Lorg/seamless/util/OS;->checkForMac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/fourthline/cling/support/shared/Main;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/fourthline/cling/support/shared/NewPlatformApple;->setup(Lorg/fourthline/cling/support/shared/ShutdownHandler;Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-static {}, Ljavax/swing/UIManager;->getSystemLookAndFeelClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/swing/UIManager;->setLookAndFeel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x384

    const/16 v3, 0x190

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    new-instance v1, Lorg/fourthline/cling/support/shared/Main$2;

    invoke-direct {v1, p0}, Lorg/fourthline/cling/support/shared/Main$2;-><init>(Lorg/fourthline/cling/support/shared/Main;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 88
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 91
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lorg/fourthline/cling/support/shared/Main$3;

    invoke-direct {v1, p0}, Lorg/fourthline/cling/support/shared/Main$3;-><init>(Lorg/fourthline/cling/support/shared/Main;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    const-string v0, "java.util.logging.config.file"

    .line 102
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [Ljava/util/logging/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/fourthline/cling/support/shared/Main;->loggingHandler:Lorg/seamless/swing/logging/LoggingHandler;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/seamless/util/logging/LoggingUtil;->resetRootHandler([Ljava/util/logging/Handler;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/support/shared/Main;->loggingHandler:Lorg/seamless/swing/logging/LoggingHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    :goto_0
    return-void
.end method

.method protected removeLoggingHandler()V
    .locals 2

    .line 165
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/support/shared/Main;->loggingHandler:Lorg/seamless/swing/logging/LoggingHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lorg/fourthline/cling/support/shared/Main;->isRegularShutdown:Z

    .line 112
    new-instance v0, Lorg/fourthline/cling/support/shared/Main$4;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/support/shared/Main$4;-><init>(Lorg/fourthline/cling/support/shared/Main;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 122
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' uncaught exception: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p2, p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 125
    new-instance p1, Lorg/fourthline/cling/support/shared/Main$5;

    invoke-direct {p1, p0, p2}, Lorg/fourthline/cling/support/shared/Main$5;-><init>(Lorg/fourthline/cling/support/shared/Main;Ljava/lang/Throwable;)V

    invoke-static {p1}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method
