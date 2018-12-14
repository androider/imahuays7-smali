.class Lorg/fourthline/cling/support/shared/Main$2;
.super Ljava/awt/event/WindowAdapter;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/Main;->init()V
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

    .line 82
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/Main$2;->this$0:Lorg/fourthline/cling/support/shared/Main;

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lorg/fourthline/cling/support/shared/Main$2;->this$0:Lorg/fourthline/cling/support/shared/Main;

    iget-object p1, p1, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    invoke-virtual {p1}, Ljavax/swing/JFrame;->dispose()V

    return-void
.end method
