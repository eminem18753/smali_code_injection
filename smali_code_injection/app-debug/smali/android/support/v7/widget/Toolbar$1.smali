.class Landroid/support/v7/widget/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .line 160
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$1;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 163
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$1;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->access$000(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$1;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->access$000(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    return v0
.end method