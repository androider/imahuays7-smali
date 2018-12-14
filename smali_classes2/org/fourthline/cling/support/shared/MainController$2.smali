.class Lorg/fourthline/cling/support/shared/MainController$2;
.super Lorg/seamless/swing/logging/LogController;
.source "MainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/MainController;-><init>(Ljavax/swing/JFrame;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/MainController;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/MainController;Lorg/seamless/swing/Controller;Ljava/util/List;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/MainController$2;->this$0:Lorg/fourthline/cling/support/shared/MainController;

    invoke-direct {p0, p2, p3}, Lorg/seamless/swing/logging/LogController;-><init>(Lorg/seamless/swing/Controller;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected expand(Lorg/seamless/swing/logging/LogMessage;)V
    .locals 1

    .line 77
    new-instance v0, Lorg/fourthline/cling/support/shared/TextExpandEvent;

    .line 78
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/shared/TextExpandEvent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/shared/MainController$2;->fireEventGlobal(Lorg/seamless/swing/Event;)V

    return-void
.end method

.method protected getParentWindow()Ljava/awt/Frame;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/MainController$2;->this$0:Lorg/fourthline/cling/support/shared/MainController;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/MainController;->getView()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljava/awt/Frame;

    return-object v0
.end method
