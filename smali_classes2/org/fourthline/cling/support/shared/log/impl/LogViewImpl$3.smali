.class Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$3;
.super Ljava/lang/Object;
.source "LogViewImpl.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->initializeToolBar(Lorg/seamless/swing/logging/LogController$Expiration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$3;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    .line 218
    iget-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$3;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    iget-object p1, p1, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->centerWindowEvent:Ljavax/enterprise/event/Event;

    new-instance v0, Lorg/fourthline/cling/support/shared/CenterWindow;

    iget-object v1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$3;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    iget-object v1, v1, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->logCategorySelector:Lorg/seamless/swing/logging/LogCategorySelector;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/shared/CenterWindow;-><init>(Ljava/awt/Window;)V

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    .line 219
    iget-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$3;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    iget-object p1, p1, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->logCategorySelector:Lorg/seamless/swing/logging/LogCategorySelector;

    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$3;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    iget-object v0, v0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->logCategorySelector:Lorg/seamless/swing/logging/LogCategorySelector;

    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogCategorySelector;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/seamless/swing/logging/LogCategorySelector;->setVisible(Z)V

    return-void
.end method
