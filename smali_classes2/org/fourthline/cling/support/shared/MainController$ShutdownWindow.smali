.class public Lorg/fourthline/cling/support/shared/MainController$ShutdownWindow;
.super Ljavax/swing/JWindow;
.source "MainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/shared/MainController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShutdownWindow"
.end annotation


# static fields
.field public static final INSTANCE:Ljavax/swing/JWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Lorg/fourthline/cling/support/shared/MainController$ShutdownWindow;

    invoke-direct {v0}, Lorg/fourthline/cling/support/shared/MainController$ShutdownWindow;-><init>()V

    sput-object v0, Lorg/fourthline/cling/support/shared/MainController$ShutdownWindow;->INSTANCE:Ljavax/swing/JWindow;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljavax/swing/JWindow;-><init>()V

    .line 136
    new-instance v0, Ljavax/swing/JLabel;

    const-string v1, "Shutting down, please wait..."

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setHorizontalAlignment(I)V

    .line 138
    invoke-virtual {p0}, Lorg/fourthline/cling/support/shared/MainController$ShutdownWindow;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 139
    new-instance v0, Ljava/awt/Dimension;

    const/16 v1, 0x12c

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/shared/MainController$ShutdownWindow;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 140
    invoke-virtual {p0}, Lorg/fourthline/cling/support/shared/MainController$ShutdownWindow;->pack()V

    .line 141
    invoke-static {p0}, Lorg/seamless/swing/Application;->center(Ljava/awt/Window;)Ljava/awt/Window;

    return-void
.end method
