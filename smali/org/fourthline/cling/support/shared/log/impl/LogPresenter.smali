.class public Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;
.super Ljava/lang/Object;
.source "LogPresenter.java"

# interfaces
.implements Lorg/fourthline/cling/support/shared/log/LogView$Presenter;


# annotations
.annotation runtime Ljavax/enterprise/context/ApplicationScoped;
.end annotation


# instance fields
.field protected textExpandEvent:Ljavax/enterprise/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/event/Event<",
            "Lorg/fourthline/cling/support/shared/TextExpand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected view:Lorg/fourthline/cling/support/shared/log/LogView;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1
    .annotation runtime Ljavax/annotation/PreDestroy;
    .end annotation

    .line 51
    new-instance v0, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter$1;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter$1;-><init>(Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init()V
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;->view:Lorg/fourthline/cling/support/shared/log/LogView;

    invoke-interface {v0, p0}, Lorg/fourthline/cling/support/shared/log/LogView;->setPresenter(Ljava/lang/Object;)V

    return-void
.end method

.method public onExpand(Lorg/seamless/swing/logging/LogMessage;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;->textExpandEvent:Ljavax/enterprise/event/Event;

    new-instance v1, Lorg/fourthline/cling/support/shared/TextExpand;

    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/fourthline/cling/support/shared/TextExpand;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public pushMessage(Lorg/seamless/swing/logging/LogMessage;)V
    .locals 1

    .line 60
    new-instance v0, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter$2;

    invoke-direct {v0, p0, p1}, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter$2;-><init>(Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;Lorg/seamless/swing/logging/LogMessage;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method
