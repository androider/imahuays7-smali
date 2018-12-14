.class Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;
.super Ljavax/swing/plaf/metal/MetalTabbedPaneUI;
.source "ClosableTabbedPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/swing/ClosableTabbedPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloseableMetalTabbedPaneUI"
.end annotation


# instance fields
.field private horizontalTextPosition:I

.field final synthetic this$0:Lorg/seamless/swing/ClosableTabbedPane;


# direct methods
.method public constructor <init>(Lorg/seamless/swing/ClosableTabbedPane;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->this$0:Lorg/seamless/swing/ClosableTabbedPane;

    invoke-direct {p0}, Ljavax/swing/plaf/metal/MetalTabbedPaneUI;-><init>()V

    const/4 p1, 0x2

    .line 567
    iput p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->horizontalTextPosition:I

    return-void
.end method

.method public constructor <init>(Lorg/seamless/swing/ClosableTabbedPane;I)V
    .locals 0

    .line 581
    iput-object p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->this$0:Lorg/seamless/swing/ClosableTabbedPane;

    invoke-direct {p0}, Ljavax/swing/plaf/metal/MetalTabbedPaneUI;-><init>()V

    const/4 p1, 0x2

    .line 567
    iput p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->horizontalTextPosition:I

    .line 582
    iput p2, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->horizontalTextPosition:I

    return-void
.end method


# virtual methods
.method protected layoutLabel(ILjava/awt/FontMetrics;ILjava/lang/String;Ljavax/swing/Icon;Ljava/awt/Rectangle;Ljava/awt/Rectangle;Ljava/awt/Rectangle;Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v15, p7

    move-object/from16 v14, p8

    move/from16 v13, p9

    const/4 v3, 0x0

    .line 603
    iput v3, v15, Ljava/awt/Rectangle;->y:I

    iput v3, v15, Ljava/awt/Rectangle;->x:I

    iput v3, v14, Ljava/awt/Rectangle;->y:I

    iput v3, v14, Ljava/awt/Rectangle;->x:I

    .line 605
    invoke-virtual {v0, v2}, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->getTextViewForTab(I)Ljavax/swing/text/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 607
    iget-object v4, v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->tabPane:Ljavax/swing/JTabbedPane;

    const-string v5, "html"

    invoke-virtual {v4, v5, v3}, Ljavax/swing/JTabbedPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 610
    :cond_0
    iget-object v3, v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->tabPane:Ljavax/swing/JTabbedPane;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->horizontalTextPosition:I

    iget v4, v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->textIconGap:I

    add-int/lit8 v16, v4, 0x2

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v11, p6

    move-object v12, v15

    move-object v13, v14

    move/from16 v14, v16

    invoke-static/range {v3 .. v14}, Ljavax/swing/SwingUtilities;->layoutCompoundLabel(Ljavax/swing/JComponent;Ljava/awt/FontMetrics;Ljava/lang/String;Ljavax/swing/Icon;IIIILjava/awt/Rectangle;Ljava/awt/Rectangle;Ljava/awt/Rectangle;I)Ljava/lang/String;

    .line 622
    iget-object v3, v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->tabPane:Ljavax/swing/JTabbedPane;

    const-string v4, "html"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljavax/swing/JTabbedPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v3, p9

    .line 624
    invoke-virtual {v0, v1, v2, v3}, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->getTabLabelShiftX(IIZ)I

    move-result v4

    .line 625
    invoke-virtual {v0, v1, v2, v3}, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->getTabLabelShiftY(IIZ)I

    move-result v1

    .line 626
    iget v2, v15, Ljava/awt/Rectangle;->x:I

    add-int/2addr v2, v4

    iput v2, v15, Ljava/awt/Rectangle;->x:I

    .line 627
    iget v2, v15, Ljava/awt/Rectangle;->y:I

    add-int/2addr v2, v1

    iput v2, v15, Ljava/awt/Rectangle;->y:I

    move-object/from16 v2, p8

    .line 628
    iget v3, v2, Ljava/awt/Rectangle;->x:I

    add-int/2addr v3, v4

    iput v3, v2, Ljava/awt/Rectangle;->x:I

    .line 629
    iget v3, v2, Ljava/awt/Rectangle;->y:I

    add-int/2addr v3, v1

    iput v3, v2, Ljava/awt/Rectangle;->y:I

    return-void
.end method
