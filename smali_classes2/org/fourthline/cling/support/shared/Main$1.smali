.class Lorg/fourthline/cling/support/shared/Main$1;
.super Lorg/seamless/swing/logging/LoggingHandler;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/shared/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/Main;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/Main;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/Main$1;->this$0:Lorg/fourthline/cling/support/shared/Main;

    invoke-direct {p0}, Lorg/seamless/swing/logging/LoggingHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected log(Lorg/seamless/swing/logging/LogMessage;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/Main$1;->this$0:Lorg/fourthline/cling/support/shared/Main;

    iget-object v0, v0, Lorg/fourthline/cling/support/shared/Main;->logPresenter:Lorg/fourthline/cling/support/shared/log/LogView$Presenter;

    invoke-interface {v0, p1}, Lorg/fourthline/cling/support/shared/log/LogView$Presenter;->pushMessage(Lorg/seamless/swing/logging/LogMessage;)V

    return-void
.end method
