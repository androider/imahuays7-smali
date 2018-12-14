.class Lorg/fourthline/cling/support/shared/MainController$3;
.super Lorg/seamless/swing/logging/LoggingHandler;
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
.method constructor <init>(Lorg/fourthline/cling/support/shared/MainController;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/MainController$3;->this$0:Lorg/fourthline/cling/support/shared/MainController;

    invoke-direct {p0}, Lorg/seamless/swing/logging/LoggingHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected log(Lorg/seamless/swing/logging/LogMessage;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/MainController$3;->this$0:Lorg/fourthline/cling/support/shared/MainController;

    invoke-static {v0}, Lorg/fourthline/cling/support/shared/MainController;->access$000(Lorg/fourthline/cling/support/shared/MainController;)Lorg/seamless/swing/logging/LogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/seamless/swing/logging/LogController;->pushMessage(Lorg/seamless/swing/logging/LogMessage;)V

    return-void
.end method
