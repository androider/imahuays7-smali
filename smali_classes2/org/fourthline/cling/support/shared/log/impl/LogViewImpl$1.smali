.class Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$1;
.super Lorg/seamless/swing/logging/LogTableCellRenderer;
.source "LogViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->init()V
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

    .line 103
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$1;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    invoke-direct {p0}, Lorg/seamless/swing/logging/LogTableCellRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDebugIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$1;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->getDebugIcon()Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getInfoIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$1;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->getInfoIcon()Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getTraceIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$1;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->getTraceIcon()Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getWarnErrorIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$1;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->getWarnErrorIcon()Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method
