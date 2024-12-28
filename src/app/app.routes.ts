import { Routes } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { LayoutComponent } from './pages/layout/layout.component';

export const routes: Routes = [
    { path: '', redirectTo: '', pathMatch: 'full' },
    
    {
      path: '',
      component: LayoutComponent,
      children: [
        {
          path: '',
          component: HomeComponent
        }

      ]
    }
  ];
  