.class Lorg/fourthline/cling/support/shared/log/impl/LogPresenter$2;
.super Ljava/lang/Object;
.source "LogPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;->pushMessage(Lorg/seamless/swing/logging/LogMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;

.field final synthetic val$message:Lorg/seamless/swing/logging/LogMessage;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;Lorg/seamless/swing/logging/LogMessage;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter$2;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;

    iput-object p2, p0, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter$2;->val$message:Lorg/seamless/swing/logging/LogMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter$2;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;

    iget-object v0, v0, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;->view:Lorg/fourthline/cling/support/shared/log/LogView;

    iget-object v1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter$2;->val$message:Lorg/seamless/swing/logging/LogMessage;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/support/shared/log/LogView;->pushMessage(Lorg/seamless/swing/logging/LogMessage;)V

    return-void
.end method
