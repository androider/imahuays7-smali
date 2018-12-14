.class Lorg/fourthline/cling/support/shared/log/impl/LogPresenter$1;
.super Ljava/lang/Object;
.source "LogPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter$1;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter$1;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;

    iget-object v0, v0, Lorg/fourthline/cling/support/shared/log/impl/LogPresenter;->view:Lorg/fourthline/cling/support/shared/log/LogView;

    invoke-interface {v0}, Lorg/fourthline/cling/support/shared/log/LogView;->dispose()V

    return-void
.end method
