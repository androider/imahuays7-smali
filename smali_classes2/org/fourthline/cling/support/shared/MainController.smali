.class public abstract Lorg/fourthline/cling/support/shared/MainController;
.super Lorg/seamless/swing/AbstractController;
.source "MainController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/shared/MainController$ShutdownWindow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/swing/AbstractController<",
        "Ljavax/swing/JFrame;",
        ">;"
    }
.end annotation


# instance fields
.field private final logController:Lorg/seamless/swing/logging/LogController;

.field private final logPanel:Ljavax/swing/JPanel;


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/swing/JFrame;",
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/seamless/swing/AbstractController;-><init>(Ljava/awt/Container;)V

    .line 56
    :try_start_0
    invoke-static {}, Ljavax/swing/UIManager;->getSystemLookAndFeelClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/swing/UIManager;->setLookAndFeel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load native look and feel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    const-string p1, "sun.awt.exception.handler"

    .line 62
    const-class v0, Lorg/fourthline/cling/support/shared/AWTExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    new-instance v0, Lorg/fourthline/cling/support/shared/MainController$1;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/support/shared/MainController$1;-><init>(Lorg/fourthline/cling/support/shared/MainController;)V

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 74
    new-instance p1, Lorg/fourthline/cling/support/shared/MainController$2;

    invoke-direct {p1, p0, p0, p2}, Lorg/fourthline/cling/support/shared/MainController$2;-><init>(Lorg/fourthline/cling/support/shared/MainController;Lorg/seamless/swing/Controller;Ljava/util/List;)V

    iput-object p1, p0, Lorg/fourthline/cling/support/shared/MainController;->logController:Lorg/seamless/swing/logging/LogController;

    .line 87
    iget-object p1, p0, Lorg/fourthline/cling/support/shared/MainController;->logController:Lorg/seamless/swing/logging/LogController;

    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogController;->getView()Ljava/awt/Container;

    move-result-object p1

    check-cast p1, Ljavax/swing/JPanel;

    iput-object p1, p0, Lorg/fourthline/cling/support/shared/MainController;->logPanel:Ljavax/swing/JPanel;

    .line 88
    iget-object p1, p0, Lorg/fourthline/cling/support/shared/MainController;->logPanel:Ljavax/swing/JPanel;

    const/4 p2, 0x5

    const/4 v0, 0x0

    invoke-static {p2, v0, v0, v0}, Ljavax/swing/BorderFactory;->createEmptyBorder(IIII)Ljavax/swing/border/Border;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 92
    new-instance p1, Lorg/fourthline/cling/support/shared/MainController$3;

    invoke-direct {p1, p0}, Lorg/fourthline/cling/support/shared/MainController$3;-><init>(Lorg/fourthline/cling/support/shared/MainController;)V

    const-string p2, "java.util.logging.config.file"

    .line 97
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 98
    new-array p2, p2, [Ljava/util/logging/Handler;

    aput-object p1, p2, v0

    invoke-static {p2}, Lorg/seamless/util/logging/LoggingUtil;->resetRootHandler([Ljava/util/logging/Handler;)V

    goto :goto_1

    .line 100
    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lorg/fourthline/cling/support/shared/MainController;)Lorg/seamless/swing/logging/LogController;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/fourthline/cling/support/shared/MainController;->logController:Lorg/seamless/swing/logging/LogController;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 122
    invoke-super {p0}, Lorg/seamless/swing/AbstractController;->dispose()V

    .line 123
    sget-object v0, Lorg/fourthline/cling/support/shared/MainController$ShutdownWindow;->INSTANCE:Ljavax/swing/JWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JWindow;->setVisible(Z)V

    .line 124
    new-instance v0, Lorg/fourthline/cling/support/shared/MainController$4;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/support/shared/MainController$4;-><init>(Lorg/fourthline/cling/support/shared/MainController;)V

    .line 129
    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/MainController$4;->start()V

    return-void
.end method

.method public getLogController()Lorg/seamless/swing/logging/LogController;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/MainController;->logController:Lorg/seamless/swing/logging/LogController;

    return-object v0
.end method

.method public getLogPanel()Ljavax/swing/JPanel;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/MainController;->logPanel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method public abstract getUpnpService()Lorg/fourthline/cling/UpnpService;
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 1

    .line 113
    new-instance v0, Lorg/seamless/swing/logging/LogMessage;

    invoke-direct {v0, p1, p2}, Lorg/seamless/swing/logging/LogMessage;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/shared/MainController;->log(Lorg/seamless/swing/logging/LogMessage;)V

    return-void
.end method

.method public log(Lorg/seamless/swing/logging/LogMessage;)V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lorg/fourthline/cling/support/shared/MainController;->getLogController()Lorg/seamless/swing/logging/LogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/seamless/swing/logging/LogController;->pushMessage(Lorg/seamless/swing/logging/LogMessage;)V

    return-void
.end method
