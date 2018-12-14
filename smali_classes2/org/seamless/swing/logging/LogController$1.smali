.class Lorg/seamless/swing/logging/LogController$1;
.super Lorg/seamless/swing/logging/LogTableCellRenderer;
.source "LogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/logging/LogController;-><init>(Lorg/seamless/swing/Controller;Lorg/seamless/swing/logging/LogController$Expiration;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/swing/logging/LogController;


# direct methods
.method constructor <init>(Lorg/seamless/swing/logging/LogController;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$1;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-direct {p0}, Lorg/seamless/swing/logging/LogTableCellRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDebugIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$1;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogController;->getDebugIcon()Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getInfoIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$1;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogController;->getInfoIcon()Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getTraceIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$1;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogController;->getTraceIcon()Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getWarnErrorIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$1;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogController;->getWarnErrorIcon()Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method
